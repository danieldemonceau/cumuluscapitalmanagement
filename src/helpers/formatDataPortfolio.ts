import formatDate from "./formatDate";
import { PositionOpen, PositionClosed } from "../types/Position.type";

export const formatDataPortfolioOpenPositions = (
  data: PositionOpen[]
): PositionOpen[] => {
  const dataFormatted = data
    .filter((d) => d.sharePriceCurrent !== null)
    .map((d) => {
      return {
        ...d,
        openTimestamp: d.openTimestamp && formatDate(d.openTimestamp),
        priceOpenedAverage: +d.priceOpenedAverage?.toFixed(2),
        sharePriceCurrent:
          d.sharePriceCurrent && +d.sharePriceCurrent?.toFixed(2),
        sharePriceCurrentDate:
          d.sharePriceCurrentDate && formatDate(d.sharePriceCurrentDate),
        plPercent: d.plPercent && +d.plPercent?.toFixed(2),
      };
    });
  return dataFormatted;
};

export const formatDataPortfolioClosedPositions = (
  data: PositionClosed[]
): PositionClosed[] => {
  const dataFormatted = data.map((d) => {
    return {
      ...d,
      openTimestamp: d.openTimestamp && formatDate(d.openTimestamp),
      priceOpenedAverage: +d.priceOpenedAverage?.toFixed(2),
      closeTimestamp: d.closeTimestamp && formatDate(d.closeTimestamp),
      priceClosedAverage: +d.priceClosedAverage?.toFixed(2),
      plPercent: d.plPercent && +d.plPercent?.toFixed(2),
    };
  });
  return dataFormatted;
};
