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
import * as fs from "fs";
import * as path from "path";
import { loadJsonFile } from "load-json-file";
import { writeJsonFile } from "write-json-file";

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
  // Check if the data is in local file
  const todayYYMMDD = new Date()
    .toLocaleDateString("en-AU")
    .split("/")
    .reverse()
    .join("")
    .split("")
    .splice(2)
    .join("");

  let readAPI = true;

  const fileNamePositionsOpen = `am-positions-open-${todayYYMMDD}.json`;
  const fileNamePositionsClosed = `am-positions-closed-${todayYYMMDD}.json`;

  const files = await fs.promises.readdir("./cache");
  if (files.filter((fn) => fn === fileNamePositionsOpen).length > 0)
    readAPI = false;

  if (!readAPI) {
    const positionOpen: PositionOpen[] = await loadJsonFile(
      path.join(process.cwd(), `./cache/${fileNamePositionsOpen}`)
    );
    const positionClosed: PositionClosed[] = await loadJsonFile(
      path.join(process.cwd(), `./cache/${fileNamePositionsClosed}`)
    );

    // Delete old cache files
    const filesToDelete = files.filter(
      (fn) =>
        (fn.includes("am-positions-open") ||
          fn.includes("am-positions-closed")) &&
        fn !== fileNamePositionsOpen &&
        fn !== fileNamePositionsClosed
    );
    for (const file of filesToDelete) {
      await fs.promises.unlink(path.join(process.cwd(), "cache", file));
    }

    return { props: { positionOpen, positionClosed } };
  }

  // If not, get the data from the API
  const responsePositionOpen = await axios({
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

  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    responsePositionOpen.data.data.allPositionOpenTheAcquirersMultiples.nodes
  );

  const responsePositionClosed = await axios({
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

  await writeJsonFile(path.join("cache", fileNamePositionsOpen), positionOpen);
  await writeJsonFile(
    path.join("cache", fileNamePositionsClosed),
    positionClosed
  );

  return { props: { positionOpen, positionClosed } };
};

export default Index;
