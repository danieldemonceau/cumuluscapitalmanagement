import { useMemo } from "react";
import { Column } from "react-table";
import { PositionOpen, PositionClosed } from "@/src/types/Position.type";

export const useTableColumnsOpenPositions = () => {
  return [
    useMemo<Column<PositionOpen>[]>(
      () => [
        // {
        //   Header: "Type",
        //   accessor: "type",
        // },
        {
          Header: "Asset",
          accessor: "asset",
        },
        {
          Header: "Date opened",
          accessor: "openTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceOpenedAverage",
        },
        {
          Header: "Current Unit Price",
          accessor: "sharePriceCurrent",
        },
        {
          Header: "Current Unit Price Date",
          accessor: "sharePriceCurrentDate",
        },
        {
          Header: "P/L %",
          accessor: "plPercent",
          sortType: sort,
        },
      ],
      []
    ),
  ];
};
export const useTableColumnsClosedPositions = () => {
  return [
    useMemo<Column<PositionClosed>[]>(
      () => [
        // {
        //   Header: "Type",
        //   accessor: "type",
        // },
        {
          Header: "Asset",
          accessor: "asset",
        },
        {
          Header: "Date opened",
          accessor: "openTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceOpenedAverage",
        },
        {
          Header: "Date closed",
          accessor: "closeTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceClosedAverage",
        },
        {
          Header: "P/L %",
          accessor: "plPercent",
          sortType: sort,
        },
      ],
      []
    ),
  ];
};

const sort = (rowA: any, rowB: any, id: string) => {
  const a = rowA.values[id];
  const b = rowB.values[id];
  if (a > b) return 1;
  if (a < b) return -1;
  return 0;
};
