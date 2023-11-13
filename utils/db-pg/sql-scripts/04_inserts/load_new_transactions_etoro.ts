import * as xlsx from "xlsx";
import * as fs from "fs";
import { Client } from "pg";
import dotenv from "dotenv";
import { marketTransactionSort } from "./market_transaction_sort";
import {
  tickersExcluded,
  tickersEtf,
  tickersMagicFormula,
  tickersToConvert,
} from "./tickers";

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

const loadNewTransactions = async ([inputFile]: string[]) => {
  const MIN_STOCK_AMOUNT = 150;
  const MIN_ETF_AMOUNT = 15;
  const ALLOWED_TYPES = ["Open Position", "Position closed"];
  const ALLOWED_ASSET_TYPES = ["Stocks", "ETF", "CFD"];

  const workbook = xlsx.readFile(inputFile);

  dotenv.config();

  const client = new Client({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_DATABASE,
    password: process.env.DB_PASSWORD,
    port: Number(process.env.DB_PORT),
  });
  await client.connect();

  const securityNamesInDb: string[] = (
    await client.query(`
      SELECT s.name
      FROM security s
      GROUP BY s.name
      ORDER BY s.name;
    `)
  ).rows.map((row) => row.name);

  const securitiesInFile: string[] = [];
  const queries: string[] = xlsx.utils
    .sheet_to_json<TransactionXLSX>(workbook.Sheets[workbook.SheetNames[2]])
    .map((transaction) => {
      const [day, month, year, hour, minute, second] =
        transaction.Date.split(/\/| |-|:/);
      const executionDate = new Date(
        `${year}-${month}-${day}T${hour}:${minute}:${second}.000Z`
      ).toISOString();

      let ticker =
        transaction.Details?.substring(
          0,
          transaction.Details.indexOf("/")
        ).trim() ?? null;
      if (ticker in tickersToConvert) ticker = tickersToConvert[ticker];
      return {
        amount: transaction.Amount,
        executionDate,
        ticker,
        transactionType: transaction.Type,
        assetType: transaction["Asset type"],
        units: transaction.Units,
      };
    })
    .filter((transaction) => {
      const { executionDate, transactionType, ticker, assetType, amount } =
        transaction;

      if (!ticker || !securityNamesInDb.includes(ticker)) return false;
      if (!securitiesInFile.includes(ticker)) securitiesInFile.push(ticker);

      return (
        !tickersExcluded.includes(ticker) &&
        Object.values(transaction).filter((value) => value === "").length ===
          0 &&
        ALLOWED_TYPES.includes(transactionType) &&
        ALLOWED_ASSET_TYPES.includes(assetType) &&
        ((ticker === "TAN" && amount >= MIN_ETF_AMOUNT) ||
          (new Date(executionDate).getTime() >
            new Date("2022-03-06").getTime() &&
            ((assetType === "Stocks" && amount >= MIN_STOCK_AMOUNT) ||
              (assetType === "ETF" && amount >= MIN_ETF_AMOUNT))))
      );
    })
    .sort(
      (a, b) =>
        new Date(a.executionDate).getTime() -
        new Date(b.executionDate).getTime()
    )
    .map((transaction) => {
      const { executionDate, transactionType, amount, units, ticker } =
        transaction;

      return `INSERT INTO market_transaction(direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
        SELECT
            'Long' "direction",
            '${transactionType === "Open Position" ? "Buy" : "Sell"}' "type",
            '' "description",
            '${executionDate}' "execution_timestamp",
            b.id "broker_id",
            ${amount} "amount",
            s.id "security_id",
            ${units} "nb_of_units",
            st.id strategy_id
        FROM
            broker b,
            security s,
            strategy st
        WHERE 
            1 = 1
            AND b.name = 'etoro'
            AND s.name = '${ticker}'
            AND st.name = '${
              tickersEtf.includes(ticker)
                ? "Market Dollar-Cost Averaging"
                : tickersMagicFormula.includes(ticker)
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
                      transactionType === "Open Position" ? "Buy" : "Sell"
                    }'
                    AND mt.description = ''
                    AND mt.execution_timestamp = '${executionDate}'
                    AND mt.broker_id = b.id
                    AND mt.amount = ${amount}::MONEY
                    AND mt.security_id = s.id
                    AND mt.nb_of_units = ${units}
                    AND mt.strategy_id = st.id);`;
    });

  const outputFile = `./12_market_transaction.sql`;
  fs.appendFileSync(outputFile, queries.join("\n\n"));

  marketTransactionSort(outputFile);

  securitiesInFile
    .filter((security) => !securityNamesInDb.includes(security))
    .sort()
    .forEach((security) => {
      console.info(`Name ${security} not found in security table`);
    });
  client.end();
};

loadNewTransactions(process.argv.slice(2));
