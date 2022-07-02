import postgraphile from "postgraphile";
import { createServer } from "http";

const dbUrl = process.env.DB_URL;
const dbSchema = process.env.DB_SCHEMA;
const graphqlRoute = process.env.GRAPHQL_ROUTE;
const graphiqlRoute = process.env.GRAPHIQL_ROUTE;

export default postgraphile(dbUrl, dbSchema, {
  watchPg: true,
  graphiql: true,
  enhanceGraphiql: true,

  graphqlRoute: "/api/graphql",
  graphiqlRoute: "/api/graphiql",
  retryOnInitFail: true,
});
