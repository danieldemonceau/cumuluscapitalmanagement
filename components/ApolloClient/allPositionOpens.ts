import {
  useQuery,
  gql,
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
} from "@apollo/client";

// export const ALL_POSITION_OPENS = gql`
//   query GetAllPositionOpens {
//     allPositionOpens {
//       nodes {
//         positionStatus
//         positionType
//         averagePriceOpen
//       }
//     }
//   }
// `;

export const ALL_POSITION_OPENS = `
  query GetAllPositionOpens {
    allPositionOpens {
      nodes {
        id
        positionType
        asset
        openTimestamp
        averagePriceOpened
        priceCurrent
        plPercent
        strategyName
      }
    }
  }
`;
