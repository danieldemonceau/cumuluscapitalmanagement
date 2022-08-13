import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import Navbar from "../Navbar";
import Hero from "./Hero";
import CumulusCapitalManagementDescription from "./CumulusCapitalManagementDescription";
import RibbonStrategies from "./RibbonStrategies";
import Description from "./Description";
import MagicFormulaDescription from "./MagicFormulaDescription";
import AcquirersMultiple from "./AcquirersMultiple";
import DollarCostAveraging from "./DollarCostAveraging";
import Portfolio from "../Portfolio";
import ContactUs from "../ContactUs";
import Footer from "../Footer";
import NoFinancialAdviceDisclaimer from "./NoFinancialAdviceDisclaimer";

const Index: NextPage = () => {
  return (
    <>
      <Navbar />
      {/* <div className="flex flex-col"> */}
      <NoFinancialAdviceDisclaimer />
      <Hero />
      <RibbonStrategies />
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
