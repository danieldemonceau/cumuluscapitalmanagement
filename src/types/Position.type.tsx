import { Decimal } from "@prisma/client/runtime";

export interface PositionOpen {
  id: number;
  type: string;
  asset: string;
  openTimestamp: string;
  priceOpenedAverage: number;
  priceCurrent: number;
  priceCurrentDate?: string;
  plPercent: number;
  strategyName: string;
  getSortByToggleProps?(): () => Record<string, unknown>;
  sortBy?(): () => Record<string, unknown>;
}

export interface PositionOpenPrisma {
  id: number;
  type: string;
  asset: string;
  open_timestamp: Date;
  price_opened_average: Decimal;
  price_current: Decimal;
  price_current_date: Date;
  pl_percent: number;
  strategy_name: string;
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
  sortBy?(): () => Record<string, unknown>;
}

export interface PositionClosedPrisma {
  id: number;
  type: string;
  asset: string;
  open_timestamp: Date;
  price_opened_average: Decimal;
  close_timestamp: Date;
  price_closed_average: Decimal;
  pl_percent: number;
  strategy_name: string;
  getSortByToggleProps?(): () => Record<string, unknown>;
  sortBy?(): () => Record<string, unknown>;
}
