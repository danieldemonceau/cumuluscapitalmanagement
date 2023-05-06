import Privacy from "@/components/Home/Privacy";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

const index = () => {
  return;
  <>
    <NextSeo
      {...{
        ...SEO,
        title: "Privacy",
      }}
    />
    <Privacy />
  </>;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
