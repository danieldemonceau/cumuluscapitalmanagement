import formatDate from "./formatDate";
import {
  PositionOpen,
  PositionClosed,
  PositionOpenPrisma,
  PositionClosedPrisma,
} from "../types/Position.type";

export const formatDataPortfolioOpenPositions = (
  data: PositionOpenPrisma[]
): PositionOpen[] => {
  const dataFormatted = data.map((d) => {
    const { id, type, asset, strategy_name: strategyName } = d;
    return {
      id,
      type,
      asset,
      openTimestamp: formatDate(d.open_timestamp),
      priceOpenedAverage: Number(Number(d.price_opened_average).toFixed(2)),
      priceCurrent: Number(Number(d.price_current).toFixed(2)),
      priceCurrentDate: formatDate(d.price_current_date),
      plPercent: Number(d.pl_percent?.toFixed(2)),
      strategyName,
    };
  });
  return dataFormatted;
};

export const formatDataPortfolioClosedPositions = (
  data: PositionClosedPrisma[]
): PositionClosed[] => {
  const dataFormatted = data.map((d) => {
    const { id, type, asset, strategy_name: strategyName } = d;
    return {
      id,
      type,
      asset,
      openTimestamp: formatDate(d.open_timestamp),
      priceOpenedAverage: Number(Number(d.price_opened_average).toFixed(2)),
      closeTimestamp: formatDate(d.close_timestamp),
      priceClosedAverage: Number(Number(d.price_closed_average).toFixed(2)),
      plPercent: Number(d.pl_percent?.toFixed(2)),
      strategyName,
    };
  });
  return dataFormatted;
};
