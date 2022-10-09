import axios from "axios";
import type { InferGetServerSidePropsType } from "next";
import {
  ALL_POSITIONS_OPEN_MAGIC_FORMULA,
  ALL_POSITIONS_CLOSED_MAGIC_FORMULA,
} from "@/components/ApolloClient/allPositions";
// import Head from "next/head";
// import styles from "../styles/Home.module.css";
import MagicFormula from "@/components/Strategies/MagicFormula";
import {
  formatDataPortfolioOpenPositions,
  formatDataPortfolioClosedPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionOpen, PositionClosed } from "@/src/types/Position.type";

const Index = ({
  positionOpen,
  positionClosed,
}: InferGetServerSidePropsType<typeof getServerSideProps>) => {
  return (
    <>
      <MagicFormula
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export const getServerSideProps = async () => {
  // Get last Quotes
  const responsePositionOpen = await axios({
    // baseURL: `${process.env.GRAPHQL_PROTOCOL}://${
    //   process.env.GRAPHQL_DOMAIN_NAME
    // }${
    //   process.env.GRAPHQL_PORT && +process.env.GRAPHQL_PORT === 80
    //     ? ""
    //     : ":" + process.env.GRAPHQL_PORT
    // }`,
    url: `${process.env.GRAPHQL_PROTOCOL}://${process.env.GRAPHQL_DOMAIN_NAME}${
      process.env.GRAPHQL_PORT && +process.env.GRAPHQL_PORT === 80
        ? ""
        : ":" + process.env.GRAPHQL_PORT
    }/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: ALL_POSITIONS_OPEN_MAGIC_FORMULA },
  });

  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    responsePositionOpen.data.data.allPositionOpenMagicFormulas.nodes
  );
  console.log("test");

  const responsePositionClosed = await axios({
    // baseURL: `${process.env.GRAPHQL_PROTOCOL}://${
    //   process.env.GRAPHQL_DOMAIN_NAME
    // }${
    //   process.env.GRAPHQL_PORT && +process.env.GRAPHQL_PORT === 80
    //     ? ""
    //     : ":" + process.env.GRAPHQL_PORT
    // }`,
    url: `${process.env.GRAPHQL_PROTOCOL}://${process.env.GRAPHQL_DOMAIN_NAME}${
      process.env.GRAPHQL_PORT && +process.env.GRAPHQL_PORT === 80
        ? ""
        : ":" + process.env.GRAPHQL_PORT
    }/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: ALL_POSITIONS_CLOSED_MAGIC_FORMULA },
  });

  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    responsePositionClosed.data.data.allPositionClosedMagicFormulas.nodes
  );

  return { props: { positionOpen, positionClosed } };
};

export default Index;
