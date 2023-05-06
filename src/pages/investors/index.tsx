import Investors from "@/components/Investors";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

const index = () => {
  return;
  <>
    <NextSeo
      {...{
        ...SEO,
        title: "Investors",
      }}
    />
    <Investors />
  </>;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
