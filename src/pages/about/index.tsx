import About from "@/components/Home/About";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

export const Index = () => {
  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "About",
        }}
      />
      <About />
    </>
  );
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default Index;
