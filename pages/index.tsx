import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Home from "../components/Home";

import { ALL_POSITION_OPENS } from "../components/ApolloClient/allPositionOpens";
import axios, { AxiosRequestConfig } from "axios";

import meta, { httpProtocol } from "../data/meta";

import { PositionGraphQl } from "../types/Position.type";
import { Quote } from "../types/Quote.type";

const Index: NextPage = (data: any) => {
  console.log("page");
  console.log(data);
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

  const positionsOpen = response.data.data;

  return { props: { data: positionsOpen } };
};
