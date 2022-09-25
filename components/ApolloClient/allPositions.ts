import "@apollo/client";

export const ALL_POSITIONS_OPEN_MAGIC_FORMULA = `
  query GetAllPositionOpenMagicFormulas {
    allPositionOpenMagicFormulas {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        priceCurrent
        priceCurrentDate
        plPercent
        strategyName
      }
    }
  }
`;

export const ALL_POSITIONS_CLOSED_MAGIC_FORMULA = `
  query GetAllPositionClosedMagicFormulas {
    allPositionClosedMagicFormulas {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        closeTimestamp
        priceClosedAverage
        plPercent
        strategyName
      }
    }
  }
`;

export const ALL_POSITIONS_OPEN_THE_ACQUIRERS_MULTIPLE = `
  query GetAllPositionOpenTheAcquirersMultiples {
    allPositionOpenTheAcquirersMultiples {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        priceCurrent
        priceCurrentDate
        plPercent
        strategyName
      }
    }
  }
`;

export const ALL_POSITIONS_CLOSED_THE_ACQUIRERS_MULTIPLE = `
  query GetAllPositionClosedTheAcquirersMultiples {
    allPositionClosedTheAcquirersMultiples {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        closeTimestamp
        priceClosedAverage
        plPercent
        strategyName
      }
    }
  }
`;

export const ALL_POSITIONS_OPEN_MARKET_DOLLAR_COST_AVERAGING = `
  query GetAllPositionOpenMarketDollarCostAveragings {
    allPositionOpenMarketDollarCostAveragings {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        priceCurrent
        priceCurrentDate
        plPercent
        strategyName
      }
    }
  }
`;

export const ALL_POSITIONS_CLOSED_MARKET_DOLLAR_COST_AVERAGING = `
  query GetAllPositionClosedMarketDollarCostAveragings {
    allPositionClosedMarketDollarCostAveragings {
      nodes {
        id
        type
        asset
        openTimestamp
        priceOpenedAverage
        closeTimestamp
        priceClosedAverage
        plPercent
        strategyName
      }
    }
  }
`;
