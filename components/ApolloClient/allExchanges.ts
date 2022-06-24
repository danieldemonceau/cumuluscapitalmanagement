import {
  useQuery,
  gql,
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
} from "@apollo/client";

export const ALL_EXCHANGES = gql`
  query GetExchanges {
    allExchanges {
      nodes {
        id
        name
        city
      }
    }
  }
`;
