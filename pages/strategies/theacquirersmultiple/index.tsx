import axios from "axios";
import type { InferGetServerSidePropsType } from "next";
import {
  ALL_POSITIONS_OPEN_THE_ACQUIRERS_MULTIPLE,
  ALL_POSITIONS_CLOSED_THE_ACQUIRERS_MULTIPLE,
} from "@/components/ApolloClient/allPositions";
// import Head from "next/head";
// import styles from "../styles/Home.module.css";
import TheAcquirersMultiple from "@/components/Strategies/TheAcquirersMultiple";
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
      <TheAcquirersMultiple
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
    data: { query: ALL_POSITIONS_OPEN_THE_ACQUIRERS_MULTIPLE },
  });

  // const responsePositionOpen = fetch("/api/graphql", {
  //   method: "POST",
  //   headers: {
  //     "Content-Type": "application/json",
  //   },
  //   body: JSON.stringify({
  //     query: `
  //       query GetLearnWithJasonEpisodes($now: DateTime!) {
  //         allEpisode(limit: 10, sort: {date: ASC}, where: {date: {gte: $now}}) {
  //           date
  //           title
  //           guest {
  //             name
  //             twitter
  //           }
  //           description
  //         }
  //       }
  //     `,
  //   }),
  // });

  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    responsePositionOpen.data.data.allPositionOpenTheAcquirersMultiples.nodes
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
    data: { query: ALL_POSITIONS_CLOSED_THE_ACQUIRERS_MULTIPLE },
  });

  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    responsePositionClosed.data.data.allPositionClosedTheAcquirersMultiples
      .nodes
  );

  return { props: { positionOpen, positionClosed } };
};

export default Index;
