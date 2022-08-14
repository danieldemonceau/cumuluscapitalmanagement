import type { NextPage } from "next";
import Head from "next/head";
import styles from "../styles/Home.module.css";
import HeroHeader from "./HeroHeader";
import CumulusCapitalManagementDescription from "./CumulusCapitalManagementDescription";
import RibbonStrategies from "./RibbonStrategies";
import Description from "./Description";
import MagicFormulaDescription from "./MagicFormulaDescription";
import AcquirersMultiple from "./AcquirersMultiple";
import DollarCostAveraging from "./DollarCostAveraging";
import Portfolio from "../Portfolio";
import NoFinancialAdviceDisclaimer from "./NoFinancialAdviceDisclaimer";

const Index: NextPage = () => {
  return (
    <>
      {/* <div className="flex flex-col"> */}
      <NoFinancialAdviceDisclaimer />
      <HeroHeader />
      <RibbonStrategies />
      {/* <CumulusCapitalManagementDescription />
      <Description /> */}
      <MagicFormulaDescription />
      <AcquirersMultiple />
      <DollarCostAveraging />
      <Portfolio />
    </>
  );
};

export default Index;
