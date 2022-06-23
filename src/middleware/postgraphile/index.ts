import postgraphile from "postgraphile";
import { createServer } from "http";

export default postgraphile(
  process.env.DB_URL ||
    "postgres://admin_cumulus:admin_cumulus@localhost:5432/cumulus",
  "public",
  {
    watchPg: true,
    graphiql: true,
    enhanceGraphiql: true,

    graphqlRoute: "/api/graphql",
    graphiqlRoute: "/api/graphiql",
    retryOnInitFail: true,
  }
);
