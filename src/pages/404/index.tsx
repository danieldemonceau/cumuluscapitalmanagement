import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

export default function Custom404() {
  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "About",
        }}
      />
      <h1>404 - Page Not Found</h1>
    </>
  );
}
