import Disclaimer from "@/components/Home/Disclaimer";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

const index = () => {
  return;
  <>
    <NextSeo
      {...{
        ...SEO,
        title: "Disclaimer",
      }}
    />
    <Disclaimer />
  </>;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
