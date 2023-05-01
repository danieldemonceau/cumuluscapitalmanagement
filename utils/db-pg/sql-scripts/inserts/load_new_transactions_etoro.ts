import * as xlsx from "xlsx";
import * as fs from "fs";
import { Client } from "pg";
import dotenv from "dotenv";
import { marketTransactionSort } from "./market_transaction_sort";

interface TransactionXLSX {
  Date: string;
  Type: string;
  Details: string;
  Amount: number;
  Units: string;
  "Realized Equity Change": number;
  "Realized Equity": number;
  Balance: number;
  "Position ID": string;
  "Asset type": string;
  NWA: number;
}

const EXCLUDE_TICKERS = [
  "BABA",
  "ENEL",
  "MIDD.L",
  "NNDM",
  "RUN",
  "SPCE",
  "SPY5.L",
  "SQQQ",
  "TTCF",
  "VZ",
  "Z",
];

const ETF_TICKERS = [
  "ARKF",
  "ARKK",
  "ARKQ",
  "FIW",
  "ICLN",
  "KRBN",
  "LIT",
  "QCLN",
  "QQQ",
  "TAN",
  "URA",
  "VEA",
  "VGK",
  "VGT",
  "VNQ",
  "VONG",
  "VOO",
];

const TICKER_CONVERT: { [key: string]: string } = {
  "FIW.US": "FIW",
  "MT.US": "MT",
  "STLA.US": "STLA",
  "WPP.L": "WPP",
  "WPP.l": "WPP",
  NOKI: "NOK",
};

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

const loadNewTransactions = async () => {
  const [inputFile] = process.argv.slice(2);

  const MIN_STOCK_AMOUNT = 150;
  const MIN_ETF_AMOUNT = 15;
  const ALLOWED_TYPES = ["Open Position", "Position closed"];
  const ALLOWED_ASSET_TYPES = ["Stocks", "ETF"];

  const workbook = xlsx.readFile(inputFile);

  const securitiesInFile: string[] = [];
  const queries: string[] = xlsx.utils
    .sheet_to_json<TransactionXLSX>(workbook.Sheets[workbook.SheetNames[2]])
    .filter((transaction) => {
      const { Type, Details, ["Asset type"]: assetType, Amount } = transaction;
      return (
        Object.values(transaction).filter((value) => value === "").length ===
          0 &&
        Object.keys(transaction).length === 11 &&
        ALLOWED_TYPES.includes(Type) &&
        ALLOWED_ASSET_TYPES.includes(assetType) &&
        ((assetType === "Stocks" && Amount >= MIN_STOCK_AMOUNT) ||
          (assetType === "ETF" && Amount >= MIN_ETF_AMOUNT)) &&
        !EXCLUDE_TICKERS.includes(Details.substring(0, Details.indexOf("/")))
      );
    })
    .sort((a, b) => {
      const [aDay, aMonth, aYear, aHour, aMinute, aSecond] =
        a.Date.split(/\/| |-|:/);
      const aDate = new Date(
        `${aYear}-${aMonth}-${aDay}T${aHour}:${aMinute}:${aSecond}.000Z`
      ).toISOString();
      const [bDay, bMonth, bYear, bHour, bMinute, bSecond] =
        b.Date.split(/\/| |-|:/);
      const bDate = new Date(
        `${bYear}-${bMonth}-${bDay}T${bHour}:${bMinute}:${bSecond}.000Z`
      ).toISOString();

      return new Date(aDate).getTime() - new Date(bDate).getTime();
    })
    .map((transaction) => {
      const {
        Date: date,
        Type: type,
        Details: details,
        Amount,
        Units,
        ["Asset type"]: assetType,
      } = transaction;

      const [day, month, year, hour, minute, second] = date.split(/\/| |-|:/);
      const executionDate = new Date(
        `${year}-${month}-${day}T${hour}:${minute}:${second}.000Z`
      ).toISOString();

      let ticker = details.substring(0, details.indexOf("/"));
      if (ticker in TICKER_CONVERT) ticker = TICKER_CONVERT[ticker];
      const amount = Number(Amount);
      const units = Number(Units);
      assetType;

      if (!securitiesInFile.includes(ticker)) securitiesInFile.push(ticker);

      const sql = `INSERT INTO market_transaction(direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
        SELECT
            'Long' "direction",
            '${type === "Open Position" ? "Buy" : "Sell"}' "type",
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
            AND b.name = 'etoro'
            AND s.name = '${ticker}'
            AND st.name = '${
              ETF_TICKERS.includes(ticker)
                ? "Market Dollar-Cost Averaging"
                : MAGIC_FORMULA_TICKERS.includes(ticker)
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
                    AND mt."type" = '${
                      type === "Open Position" ? "Buy" : "Sell"
                    }'
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
  fs.appendFileSync(outputFile, queries.join("\n\n"));

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
        console.log(`Name ${security} not found in security table`);
      }
    }
  }

  client.end();
};

loadNewTransactions();
