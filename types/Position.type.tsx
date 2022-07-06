export interface PositionOpen {
  id: number;
  type: string;
  asset: string;
  openTimestamp: string;
  priceOpenAverage: number;
  sharePriceCurrent?: number;
  sharePriceCurrentDate?: string;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => {};
}
export interface PositionClosed {
  id: number;
  type: string;
  asset: string;
  openTimestamp: string;
  priceOpenAverage: number;
  sharePriceCurrent?: number;
  sharePriceCurrentDate?: string;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => {};
}
