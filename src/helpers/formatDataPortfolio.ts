import formatDate from "./formatDate";
import { PositionOpen } from "../../types/Position.type";

const formatDataPortfolio = (data: PositionOpen[]): PositionOpen[] => {
  const dataFormatted = data
    .filter((d) => d.sharePriceCurrent !== null)
    .map((d) => {
      return {
        ...d,
        openTimestamp: d.openTimestamp && formatDate(d.openTimestamp),
        priceOpenAverage: +d.priceOpenAverage?.toFixed(2),
        sharePriceCurrent:
          d.sharePriceCurrent && +d.sharePriceCurrent?.toFixed(2),
        sharePriceCurrentDate:
          d.sharePriceCurrentDate && formatDate(d.sharePriceCurrentDate),
        plPercent: d.plPercent && +d.plPercent?.toFixed(2),
      };
    });
  return dataFormatted;
};

export default formatDataPortfolio;
