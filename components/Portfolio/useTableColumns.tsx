import { useMemo } from "react";
import { Column } from "react-table";
import { PositionOpen } from "@/src/types/Position.type";

export const useTableColumns = (positionStatus: string) => {
  let columns: Column<PositionOpen>[];
  switch (positionStatus) {
    case "opened":
      columns = [
        // {
        //   Header: "Type",
        //   accessor: "type",
        // },
        {
          Header: "Asset",
          accessor: "asset",
        },
        {
          Header: "Date open",
          accessor: "openTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceOpenAverage",
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
      ];
      break;
    case "closed":
      columns = [
        // {
        //   Header: "Type",
        //   accessor: "type",
        // },
        {
          Header: "Asset",
          accessor: "asset",
        },
        {
          Header: "Date open",
          accessor: "openTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceOpenAverage",
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
      ];
      break;
    default:
      columns = [
        // {
        //   Header: "Type",
        //   accessor: "type",
        // },
        {
          Header: "Asset",
          accessor: "asset",
        },
        {
          Header: "Date open",
          accessor: "openTimestamp",
        },
        {
          Header: "Avg Unit Price Open",
          accessor: "priceOpenAverage",
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
      ];
      break;
  }
  return [useMemo<Column<PositionOpen>[]>(() => columns, [columns])];
};

const sort = (rowA: any, rowB: any, id: string) => {
  const a = rowA.values[id];
  const b = rowB.values[id];
  if (a > b) return 1;
  if (a < b) return -1;
  return 0;
};
