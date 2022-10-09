import { gql } from "@apollo/client";

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
