import { Client } from "pg";
import dotenv from "dotenv";
import { DateTime } from "luxon";
import { tickersEtf, tickersMagicFormula } from "./tickers";
import { parse } from "csv-parse";
import fs from "fs";
import * as file from "fs";
import { marketTransactionSort } from "./market_transaction_sort";

const isNYDST = (date: Date) => {
  const nyTimeZone = "America/New_York";
  const dt = DateTime.fromJSDate(date, { zone: nyTimeZone });

  return dt.isInDST;
};

const createDateFromString = (date: string) => {
  const [dayRaw, monthRaw, yearRaw] = date.split("/");

  const day = dayRaw.padStart(2, "0");
  const month = monthRaw.padStart(2, "0");
  const year = yearRaw;

  const isoTimestamp = `${year}-${month}-${day}T13:30:00Z`;

  const isDST = isNYDST(new Date(isoTimestamp));

  return new Date(
    isDST ? isoTimestamp : `${year}-${month}-${day}T14:30:00Z`
  ).toISOString();
};

const loadNewTransactions = async ([inputFile]: string[]) => {
  const securitiesInFile: string[] = [];
  const getQueries = async (inputFile: string) => {
    const queries: string[] = [];
    const parser = fs.createReadStream(inputFile).pipe(
      parse({
        relax_column_count: true,
      })
    );
    for await (const record of parser) {
      if (!record[0].match(/^\d\d/)) continue;
      const [date, , , ticker, type, Units, , Amount] = record;

      if (!["Buy", "Sell"].includes(type)) continue;

      const executionDate = createDateFromString(date);

      const amount = Math.abs(Number(-Amount.replace("$", "")));
      const units = Number(Units);

      if (!securitiesInFile.includes(ticker)) securitiesInFile.push(ticker);

      queries.push(`INSERT INTO market_transaction(direction, type, description, execution_timestamp, broker_id, amount, security_id, nb_of_units, strategy_id)
        SELECT
            'Long' "direction",
            '${type}' "type",
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
            AND b.name = 'Superhero'
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
                    AND mt."type" = '${type}'
                    AND mt.description = ''
                    AND mt.execution_timestamp = '${executionDate}'
                    AND mt.broker_id = b.id
                    AND mt.amount = ${amount}::MONEY
                    AND mt.security_id = s.id
                    AND mt.nb_of_units = ${units}
                    AND mt.strategy_id = st.id);`);
    }
    return queries.join("\n\n");
  };

  const queries = await getQueries(inputFile);

  const outputFile = `./12_market_transaction.sql`;
  file.appendFileSync(outputFile, queries);
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

loadNewTransactions(process.argv.slice(2));
