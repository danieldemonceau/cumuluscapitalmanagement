import {
  useQuery,
  gql,
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
} from "@apollo/client";

export const apolloClient = new ApolloClient({
  uri: process.env.GRAPHQL_ROUTE,
  cache: new InMemoryCache(),
});
