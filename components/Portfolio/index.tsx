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
import { MagicFormulaTable } from "./MagicFormulaTable";
import AcquirersMultipleTable from "./AcquirersMultipleTable";

import {
  useQuery,
  gql,
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
} from "@apollo/client";

import { ALL_EXCHANGES } from "../ApolloClient/allExchanges";

const Portfolio = () => {
  // const { loading, error, data } = useQuery(ALL_EXCHANGES);
  // if (loading) return "Loading...";
  // if (error) return `Error! ${error}`;
  // console.log(data);
  return (
    <>
      <section className="m-5 p-2">
        <h1 className="text-center uppercase">Portfolios</h1>
        {/* {data.allExchanges.nodes.map(({ id, name }: any) => (
          <div key={id}>
            <p>{name}</p>
          </div>
        ))} */}
        <MagicFormulaTable />
        <AcquirersMultipleTable />
      </section>
    </>
  );
};

export default Portfolio;
