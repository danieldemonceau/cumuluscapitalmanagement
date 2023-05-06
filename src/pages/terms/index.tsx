import Terms from "@/components/Home/Terms";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

const index = () => {
  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "Terms",
        }}
      />
      <Terms />
    </>
  );
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
