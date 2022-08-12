import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import Navbar from "../Navbar";
import Hero from "./Hero";
import CumulusCapitalManagementDescription from "./CumulusCapitalManagementDescription";
import FeaturedStrategies from "./FeaturedStrategies";
import Description from "./Description";
import MagicFormulaDescription from "./MagicFormulaDescription";
import AcquirersMultiple from "./AcquirersMultiple";
import DollarCostAveraging from "./DollarCostAveraging";
import Portfolio from "../Portfolio";
import ContactUs from "../ContactUs";
import Footer from "../Footer";

const Index: NextPage = () => {
  return (
    <>
      <Navbar />
      {/* <div className="flex flex-col"> */}
      <Hero />
      <FeaturedStrategies />
      {/* <CumulusCapitalManagementDescription />
      <Description /> */}
      <MagicFormulaDescription />
      <AcquirersMultiple />
      <DollarCostAveraging />
      <Portfolio />
      <ContactUs />
      <Footer />
    </>
  );
};

export default Index;
