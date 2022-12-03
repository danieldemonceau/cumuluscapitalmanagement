import type { NextPage } from "next";
// import HeroHeader from "./HeroHeader";
import RibbonStrategies from "./RibbonStrategies";
import HomeDescription from "./HomeDescription";

const Index: NextPage = () => {
  return (
    <>
      {/* <HeroHeader /> */}
      <RibbonStrategies />
      <HomeDescription />
    </>
  );
};

export default Index;
