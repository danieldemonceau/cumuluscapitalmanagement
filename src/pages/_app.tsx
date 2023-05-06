import "../../styles/globals.css";
import type { AppProps } from "next/app";

import Layout from "@/components/Layout";
import { NextSeo } from "next-seo";
import SEO from "../../next-seo.config";
import Meta from "@/components/Meta";

import type { AppType } from "next/app";
import { trpc } from "../utils/trpc";

import { config } from "@fortawesome/fontawesome-svg-core";
import "@fortawesome/fontawesome-svg-core/styles.css";
config.autoAddCss = false;

const App: AppType = ({ Component, pageProps }: AppProps) => {
  return (
    <>
      <NextSeo {...SEO} />
      <Meta />
      <Layout>
        <Component {...pageProps} />
      </Layout>
    </>
  );
};

export default trpc.withTRPC(App);
