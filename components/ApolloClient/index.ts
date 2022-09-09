import { ApolloClient, InMemoryCache } from "@apollo/client";

export const apolloClient = new ApolloClient({
  uri: process.env.GRAPHQL_ROUTE,
  cache: new InMemoryCache(),
});
