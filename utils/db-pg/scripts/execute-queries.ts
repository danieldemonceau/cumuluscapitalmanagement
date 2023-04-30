import { Client } from "pg";
import dotenv from "dotenv";
import fs from "fs";

const getVerificationSql = (sql: string): string | null => {
  // Returns a verification SQL statement for CREATE TABLE, CREATE VIEW, or INSERT/UPDATE/DELETE
  if (sql.match(/^CREATE TABLE/i)) {
    return `SELECT COUNT(*) FROM ${getTableName(sql)};`;
  } else if (sql.match(/^CREATE VIEW/i)) {
    return null; // Views can't be verified
  } else if (sql.match(/^(INSERT|UPDATE|DELETE)/i)) {
    return `SELECT COUNT(*) FROM ${getAffectedTable(sql)};`;
  } else {
    return null; // SQL statement doesn't need to be verified
  }
};

const getTableName = (sql: string): string => {
  // Simple function to extract the table name from a CREATE TABLE SQL statement
  // Assumes that the table name is the first word after "CREATE TABLE"
  const matches = /CREATE TABLE\s+(\w+)/i.exec(sql);
  if (!matches || matches.length < 2) {
    throw new Error("Could not determine table name from SQL");
  }
  return matches[1];
};

const getAffectedTable = (sql: string): string => {
  // Simple function to extract the affected table name from an INSERT/UPDATE/DELETE SQL statement
  // Assumes that the table name is the first word after the statement keyword
  const matches = /^(INSERT|UPDATE|DELETE)\s+\w+\s+FROM\s+(\w+)/i.exec(sql);
  if (!matches || matches.length < 3) {
    throw new Error("Could not determine affected table name from SQL");
  }
  return matches[2];
};

const executeQueries = async () => {
  // Load environment variables from .env file
  dotenv.config();

  // Get the array of SQL files from the command line arguments
  const sqlFiles = process.argv
    .slice(2)
    .filter((sqlFile) => sqlFile.endsWith(".sql"));

  // Connect to PostgreSQL database
  const client = new Client({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_DATABASE,
    password: process.env.DB_PASSWORD,
    port: Number(process.env.DB_PORT),
  });
  await client.connect();

  // Begin transaction
  await client.query("BEGIN");

  try {
    // Loop through each SQL file and execute its contents
    for (const sqlFile of sqlFiles) {
      // Continue loop if file doesn't exist
      if (!fs.existsSync(sqlFile)) {
        console.warn(`-> File not found: ${sqlFile}`);
        continue;
      }

      const sql = fs.readFileSync(sqlFile, "utf-8");

      // Execute the SQL
      await client.query(`;`);
      await client.query(sql);

      // Verify that the SQL was executed correctly
      const verificationSql = getVerificationSql(sql);
      if (verificationSql) {
        const result = await client.query(verificationSql);
        if (result.rowCount !== 1) {
          throw new Error(`Verification failed for ${sqlFile}`);
        }
      }
    }

    // Commit transaction
    await client.query("COMMIT");

    console.log("All SQL files executed successfully!");
  } catch (error) {
    console.error(`Error executing SQL: ${error}`);

    // Roll back transaction
    await client.query("ROLLBACK");
  } finally {
    await client.end();
  }
};

executeQueries();
