import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Home from "../components/Home";

import { ALL_POSITION_OPENS } from "../components/ApolloClient/allPositionOpens";
import axios, { AxiosRequestConfig } from "axios";

import meta, { httpProtocol } from "../data/meta";

import { PositionOpen } from "../types/Position.type";
import { loadPositionOpens } from "../src/state/positionOpenSlice";

import { Quote } from "../types/Quote.type";

import { useAppSelector, useAppDispatch } from "../src/state/hooks";

import { InferGetServerSidePropsType } from "next";
import formatDataPortfolio from "../src/helpers/formatDataPortfolio";

const Index = ({
  positionsOpen,
}: InferGetServerSidePropsType<typeof getServerSideProps>) => {
  const dispatch = useAppDispatch();
  dispatch(loadPositionOpens(positionsOpen));

  const positionOpen = useAppSelector((state) => state.positionOpen);
  return (
    <>
      <Home />
    </>
  );
};

export default Index;

export const getServerSideProps = async () => {
  // Get last Quotes
  const response = await axios({
    baseURL: `${httpProtocol}://${meta.domainName}:${process.env.PORT}`,
    url: `/api/graphql`,
    method: "post",
    headers: {
      "content-type": "application/json",
    },
    data: { query: ALL_POSITION_OPENS },
  });

  const positionsOpen: PositionOpen[] = formatDataPortfolio(
    response.data.data.allPositionOpens.nodes
  );

  return { props: { positionsOpen } };
};
