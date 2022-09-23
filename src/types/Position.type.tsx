export interface PositionOpen {
  id: number;
  type: string;
  asset: string;
  openTimestamp: string;
  priceOpenedAverage: number;
  sharePriceCurrent?: number;
  sharePriceCurrentDate?: string;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => Record<string, unknown>;
}
export interface PositionClosed {
  id: number;
  type: string;
  asset: string;
  openTimestamp: string;
  priceOpenedAverage: number;
  closeTimestamp: string;
  priceClosedAverage: number;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => Record<string, unknown>;
}
