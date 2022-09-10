import axios from "axios";
import type { InferGetServerSidePropsType } from "next";
import { POSITION_OPEN_MAGIC_FORMULAS } from "@/components/ApolloClient/allPositionOpenMagicFormulas";
// import Head from "next/head";
// import styles from "../styles/Home.module.css";
import MagicFormula from "@/components/Strategies/MagicFormula";
import meta, { httpProtocol } from "@/src/data/meta";
import formatDataPortfolio from "@/src/helpers/formatDataPortfolio";
import { PositionOpen } from "@/src/types/Position.type";

const Index = ({
  positionOpen,
}: InferGetServerSidePropsType<typeof getServerSideProps>) => {
  return (
    <>
      <MagicFormula positionOpen={positionOpen} />
    </>
  );
};

export const getServerSideProps = async () => {
  // Get last Quotes
  const response = await axios({
    baseURL: `${httpProtocol}://${meta.domainName}:${process.env.PORT}`,
    url: `/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: POSITION_OPEN_MAGIC_FORMULAS },
  });

  const positionOpen: PositionOpen[] = formatDataPortfolio(
    response.data.data.allPositionOpenMagicFormulas.nodes
  );

  return { props: { positionOpen } };
};

export default Index;
