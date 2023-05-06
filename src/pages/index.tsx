import { NextPage } from "next";
import Home from "@/components/Home";
import StructuredData from "@/components/StructuredData";
import { structuredData } from "../data/structuredData";

const Index: NextPage = () => {
  return (
    <>
      <StructuredData data={structuredData} />
      <Home />
    </>
  );
};

export default Index;
