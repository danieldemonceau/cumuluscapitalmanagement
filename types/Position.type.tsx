export interface Position {
  id: number;
  type: string;
  asset: string;
  date_open: string;
  unit_price_open_average: number;
  unit_price_current?: number;
  p_l_percent: number;
  strategy: string;
  getSortByToggleProps?(): () => {};
}
export interface PositionGraphQl {
  id: number;
  positionType: string;
  asset: string;
  openTimestamp: string;
  averagePriceOpened: number;
  priceCurrent?: number;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => {};
}
