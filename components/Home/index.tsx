import type { NextPage } from "next";
import HeroHeader from "./HeroHeader";
import RibbonStrategies from "./RibbonStrategies";
import MagicFormulaDescription from "./MagicFormulaDescription";

const Index: NextPage = () => {
  return (
    <>
      <HeroHeader />
      <RibbonStrategies />
      <MagicFormulaDescription />
    </>
  );
};

export default Index;
