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
import { PositionOpen } from "../../types/Position.type";
import { Quote } from "../../types/Quote.type";
import { ChevronDownIcon, ChevronUpIcon } from "@heroicons/react/solid";
import { Table } from "./Table";

import {
  useQuery,
  gql,
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
} from "@apollo/client";
import { StrategyTableOpen } from "./StrategyTableOpen";

import { useAppSelector, useAppDispatch } from "../../src/state/hooks";

const AcquirersMultipleTable = () => {
  const strategyName = "The Acquirer's Multiple";

  return (
    <>
      <StrategyTableOpen strategyName={strategyName} />
    </>
  );
};

export default AcquirersMultipleTable;
