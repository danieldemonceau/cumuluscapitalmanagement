import fs from "fs";

interface Query {
  statement: string;
  date: string;
}
if (process.argv.length < 3) {
  console.error("Please provide the SQL script filename as an argument.");
  process.exit(1);
}

const filename = process.argv[2];
const sqlScript = fs.readFileSync(filename, "utf8");

const queries: Query[] = sqlScript
  .split(";")
  .map((statement) => {
    return {
      statement: statement.trim(),
      date: "",
    };
  })
  .filter((query, index, queries) => {
    const firstIndex = queries.findIndex(
      (p) => p.statement === query.statement
    );
    return index === firstIndex;
  })
  .filter((query) =>
    query.statement.startsWith("INSERT INTO market_transaction")
  )
  .map((query) => {
    const matches = /'(\d{4}-\d{2}-\d{2})'/g.exec(query.statement);
    if (!matches || matches.length < 2) {
      throw new Error("Could not determine affected table name from SQL");
    }
    return {
      statement: query.statement,
      date: matches[1],
    };
  })
  .filter(
    (query) =>
      query.statement.includes("Magic Formula") &&
      query.statement.includes("Stake")
  );

queries.sort((a, b) => {
  return new Date(a.date).getTime() - new Date(b.date).getTime();
});

fs.writeFileSync(
  filename + ".new.sql",
  queries.map((query) => query.statement).join(";\n\n") + ";"
);
