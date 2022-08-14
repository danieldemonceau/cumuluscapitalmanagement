import { useTableColumns } from "./useTableColumns";
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
import { PositionOpen } from "../../src/types/Position.type";
import { ChevronDownIcon, ChevronUpIcon } from "@heroicons/react/solid";
import { Table } from "./Table";
import { StrategyTableOpen } from "./StrategyTableOpen";

import { useAppSelector, useAppDispatch } from "../../src/state/hooks";

export const MagicFormulaTable = () => {
  const [strategyName, setStrategyName] = useState("Magic Formula");

  return (
    <>
      <StrategyTableOpen strategyName={strategyName} />
    </>
  );
};
