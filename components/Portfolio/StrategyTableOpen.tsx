import { useTableColumns } from "./useTableColumns";
import { Table } from "./Table";
import { useState, useMemo, useEffect } from "react";
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
import { PositionOpen } from "../../types/Position.type";
import { ChevronDownIcon, ChevronUpIcon } from "@heroicons/react/solid";

import { useAppSelector, useAppDispatch } from "../../src/state/hooks";

export const StrategyTableOpen = ({
  strategyName,
}: {
  strategyName: string;
}) => {
  const positionOpen: PositionOpen[] = useAppSelector(
    (state) => state.positionOpen
  );
  const positionOpenMagicFormula: PositionOpen[] = positionOpen.filter(
    (p) => p.strategyName === strategyName
  );
  const [columns] = useTableColumns("open");

  const data: PositionOpen[] = useMemo<PositionOpen[]>(
    () => positionOpenMagicFormula,
    [positionOpenMagicFormula]
  );

  return (
    <>
      <h2 className="text-center uppercase">{strategyName}</h2>
      <Table columns={columns} data={data} />
    </>
  );
};
