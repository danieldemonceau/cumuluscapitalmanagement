import axios from "axios";
import type { InferGetServerSidePropsType } from "next";
import {
  ALL_POSITIONS_OPEN_MARKET_DOLLAR_COST_AVERAGING,
  ALL_POSITIONS_CLOSED_MARKET_DOLLAR_COST_AVERAGING,
} from "@/components/ApolloClient/allPositions";
// import Head from "next/head";
// import styles from "../styles/Home.module.css";
import MarketDollarCostAveraging from "@/components/Strategies/MarketDollarCostAveraging";
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
      <MarketDollarCostAveraging
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
    data: { query: ALL_POSITIONS_OPEN_MARKET_DOLLAR_COST_AVERAGING },
  });

  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    responsePositionOpen.data.data.allPositionOpenMarketDollarCostAveragings
      .nodes
  );

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
    data: { query: ALL_POSITIONS_CLOSED_MARKET_DOLLAR_COST_AVERAGING },
  });

  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    responsePositionClosed.data.data.allPositionClosedMarketDollarCostAveragings
      .nodes
  );

  return { props: { positionOpen, positionClosed } };
};

export default Index;
