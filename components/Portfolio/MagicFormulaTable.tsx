import { useTableColumns } from "./useTableColumns";
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
import { ChevronDownIcon, ChevronUpIcon } from "@heroicons/react/solid";
import { Table } from "./Table";

export const MagicFormulaTable = () => {
  const [columns] = useTableColumns();

  const data: Position[] = useMemo<Position[]>(
    () => [
      {
        id: 1,
        type: "Long",
        asset: "SYF",
        date_open: "2022-03-11",
        unit_price_open_average: 20,
        unit_price_current: 60,
        p_l_percent: -10,
        strategy: "Magic Formula",
      },
      {
        id: 2,
        type: "Long",
        asset: "SYF",
        date_open: "2022-03-12",
        unit_price_open_average: 50,
        unit_price_current: 60,
        p_l_percent: 2,
        strategy: "Magic Formula",
      },
      {
        id: 3,
        type: "Long",
        asset: "SYF",
        date_open: "2022-03-13",
        unit_price_open_average: 50,
        unit_price_current: 60,
        p_l_percent: 3,
        strategy: "Magic Formula",
      },
      {
        id: 4,
        type: "Long",
        asset: "SYF",
        date_open: "2022-03-14",
        unit_price_open_average: 50,
        unit_price_current: 60,
        p_l_percent: 4,
        strategy: "Acquirer's Multiple",
      },
      {
        id: 5,
        type: "Long",
        asset: "SYF",
        date_open: "2022-03-15",
        unit_price_open_average: 50,
        unit_price_current: 60,
        p_l_percent: 5,
        strategy: "Magic Formula",
      },
    ],
    []
  );

  return (
    <>
      <h2 className="text-center uppercase">Magic Formula</h2>
      <Table columns={columns} data={data} />
    </>
  );
};
