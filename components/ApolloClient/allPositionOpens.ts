import "@apollo/client";

export const ALL_POSITION_OPENS = `
  query GetAllPositionOpens {
    allPositionOpens {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenAverage
        sharePriceCurrent
        sharePriceCurrentDate
        plPercent
        strategyName
      }
    }
  }
`;
