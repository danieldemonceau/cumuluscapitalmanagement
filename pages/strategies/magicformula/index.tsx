import axios from "axios";
import type { InferGetServerSidePropsType } from "next";
import {
  POSITION_OPEN_MAGIC_FORMULAS,
  POSITION_CLOSED_MAGIC_FORMULAS,
} from "@/components/ApolloClient/allPositionsMagicFormulas";
// import Head from "next/head";
// import styles from "../styles/Home.module.css";
import MagicFormula from "@/components/Strategies/MagicFormula";
import meta, { httpProtocol } from "@/src/data/meta";
import formatDataPortfolio from "@/src/helpers/formatDataPortfolio";
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
    baseURL: `${httpProtocol}://${meta.domainName}:${process.env.PORT}`,
    url: `/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: POSITION_OPEN_MAGIC_FORMULAS },
  });

  const positionOpen: PositionOpen[] = formatDataPortfolio(
    responsePositionOpen.data.data.allPositionOpenMagicFormulas.nodes
  );

  const responsePositionClosed = await axios({
    baseURL: `${httpProtocol}://${meta.domainName}:${process.env.PORT}`,
    url: `/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: POSITION_CLOSED_MAGIC_FORMULAS },
  });

  const positionClosed: PositionClosed[] = formatDataPortfolio(
    responsePositionClosed.data.data.allPositionClosedMagicFormulas.nodes
  );

  return { props: { positionOpen, positionClosed } };
};

export default Index;
