import { useState, useMemo } from "react";
import {
  CellProps,
  FilterProps,
  FilterValue,
  IdType,
  Row,
  TableInstance,
  useTable,
  Column,
  useSortBy,
} from "react-table";
import { Position } from "../../types/Position.type";

export const useTableColumns = () => {
  const columns: Column<Position>[] = useMemo<Column<Position>[]>(
    () => [
      {
        Header: "Type",
        accessor: "type",
      },
      {
        Header: "Asset",
        accessor: "asset",
      },
      {
        Header: "Date open",
        accessor: "date_open",
      },
      {
        Header: "Price",
        accessor: "price",
      },
      {
        Header: "Price today",
        accessor: "price_today",
      },
      {
        Header: "P/L %",
        accessor: "p_l_percent",
      },
    ],
    []
  );
  return [columns];
};
