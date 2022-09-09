import "@apollo/client";

export const POSITION_OPEN_MAGIC_FORMULAS = `
  query GetAllPositionOpenMagicFormulas {
    allPositionOpenMagicFormulas {
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

// strategy_name = "Magic Formula";
