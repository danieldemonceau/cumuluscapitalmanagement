import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import Navbar from "../Navbar";
import Header from "./Header";
import Description from "./Description";
import Portfolio from "../Portfolio";
import Footer from "../Footer";

const Index: NextPage = () => {
  return (
    <>
      <Navbar />
      {/* <div className="flex flex-col"> */}
      <Header />
      <Description />
      <Portfolio />
      <Footer />
      {/* </div> */}
    </>
  );
};

export default Index;
