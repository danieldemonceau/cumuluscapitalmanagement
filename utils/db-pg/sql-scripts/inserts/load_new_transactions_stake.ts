import * as xlsx from "xlsx";
import * as fs from "fs";
import { Client } from "pg";
import dotenv from "dotenv";
import { DateTime } from "luxon";
import { marketTransactionSort } from "./market_transaction_sort";

interface TransactionXLSX {
  "DATE (US)": string;
  "SETTLEMENT DATE (US)": string;
  REFERENCE: string;
  SYMBOL: string;
  SIDE: string;
  UNITS: number;
  "EFFECTIVE PRICE (USD)": number;
  "BROKERAGE FEE (USD)": number;
  "TAF FEE (USD)": number;
  "SEC FEE (USD)": number;
  "VALUE (USD)": number;
  "FX RATE": number;
  "LOCAL CURRENCY VALUE": number;
}

const MAGIC_FORMULA_TICKERS = [
  "AMR",
  "ASRT",
  "ASTL",
  "ATKR",
  "BCC",
  "BKE",
  "CCRN",
  "DDS",
  "DKS",
  "HDSN",
  "HPQ",
  "IRWD",
  "JAKK",
  "JILL",
  "LEU",
  "LLY",
  "LPX",
  "MLI",
  "MLI",
  "MSB",
  "NUE",
  "OCUP",
  "PRPH",
  "RS",
  "RYI",
  "SIGA",
  "VIR",
  "WFG",
  "WIRE",
  "X",
  "ZYME",
];

const isNYDST = (date: Date) => {
  const nyTimeZone = "America/New_York";
  const dt = DateTime.fromJSDate(date, { zone: nyTimeZone });

  return dt.isInDST;
};

const createDateFromDays = (days: number) => {
  const MS_PER_DAY = 24 * 60 * 60 * 1000;
  const EXCEL_BASE_DATE = new Date(1900, 0, 1, 0, 0, 0, 0);
  const date = new Date(EXCEL_BASE_DATE.getTime() + (days - 2) * MS_PER_DAY);

  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");

  const isoTimestamp = `${year}-${month}-${day}T13:30:00Z`;

  const isDST = isNYDST(new Date(isoTimestamp));

  return new Date(isDST ? isoTimestamp : `${year}-${month}-${day}T14:30:00Z`);
};

const loadNewTransactions = async () => {
  const [inputFile] = process.argv.slice(2);

  const workbook = xlsx.readFile(inputFile);

  const securitiesInFile: string[] = [];
  const MIN_STOCK_AMOUNT = 210;
  const queries: string[] = xlsx.utils
    .sheet_to_json<TransactionXLSX>(workbook.Sheets[workbook.SheetNames[1]])
    .filter(
      (transaction) =>
        Object.values(transaction).filter((value) => value === "").length ===
          0 &&
        Object.keys(transaction).length === 13 &&
        Math.abs(transaction["VALUE (USD)"]) >= MIN_STOCK_AMOUNT
    )
    .sort(
      (a, b) =>
        createDateFromDays(Number(a["SETTLEMENT DATE (US)"])).getTime() -
        createDateFromDays(Number(b["SETTLEMENT DATE (US)"])).getTime()
    )
    .map((transaction) => {
      const {
        ["SETTLEMENT DATE (US)"]: date,
        SIDE: type,
        SYMBOL: ticker,
        "VALUE (USD)": Amount,
        UNITS,
      } = transaction;

      const executionDate = createDateFromDays(Number(date)).toISOString();

      const amount = Math.abs(Number(Amount));
      const units = Number(UNITS);

      if (!securitiesInFile.includes(ticker)) securitiesInFile.push(ticker);

      const sql = `INSERT INTO market_transaction(direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
        SELECT
            'Long' "direction",
            '${type === "B" ? "Buy" : "Sell"}' "type",
            '' "description",
            '${executionDate}' "execution_timestamp",
            b.id "broker_id",
            ${amount} "amount",
            s.id "security_id",
            ${units} "nb_of_units",
            st.id strategy_id
        FROM
            broker b,
            SECURITY s,
            strategy st
        WHERE 
            1 = 1
            AND b.name = 'Stake'
            AND s.name = '${ticker}'
            AND st.name = '${
              MAGIC_FORMULA_TICKERS.includes(ticker)
                ? "Magic Formula"
                : "The Acquirer''s Multiple"
            }'
            AND NOT EXISTS (
                SELECT
                    mt.id
                FROM
                    market_transaction mt
                WHERE
                    1 = 1
                    AND mt.direction = 'Long'
                    AND mt."type" = '${type === "B" ? "Buy" : "Sell"}'
                    AND mt.description = ''
                    AND mt.execution_timestamp = '${executionDate}'
                    AND mt.broker_id = b.id
                    AND mt.amount = ${amount}::MONEY
                    AND mt.security_id = s.id
                    AND mt.nb_of_units = ${units}
                    AND mt.strategy_id = st.id);`;
      return sql;
    });

  const outputFile = `./12_market_transaction.sql`;
  await fs.appendFileSync(outputFile, queries.join("\n\n"));

  marketTransactionSort(outputFile);

  dotenv.config();

  const client = new Client({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_DATABASE,
    password: process.env.DB_PASSWORD,
    port: Number(process.env.DB_PORT),
  });
  await client.connect();
  const securityTableExists = await client.query(`SELECT EXISTS (
    SELECT 1 
    FROM   pg_catalog.pg_tables 
    WHERE  schemaname = 'public'
    AND    tablename  = 'security');`);

  if (securityTableExists.rows[0].exists) {
    const securityNamesInDb: string[] = (
      await client.query(`SELECT name FROM security GROUP BY name;`)
    ).rows.map((row) => row.name);

    for (const security of securitiesInFile) {
      if (!securityNamesInDb.includes(security)) {
        console.info(`Name ${security} not found in security table`);
      }
    }
  }

  client.end();
};

loadNewTransactions();
