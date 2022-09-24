import postgraphile from "postgraphile";

const dbUrl = process.env.DB_URL;
const dbSchema = process.env.DB_SCHEMA;

export default postgraphile(dbUrl, dbSchema, {
  watchPg: true,
  graphiql: true,
  enhanceGraphiql: true,

  graphqlRoute: "/api/graphql",
  graphiqlRoute: "/api/graphiql",
  retryOnInitFail: true,
});
