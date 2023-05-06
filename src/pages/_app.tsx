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
import GoogleAnalytics from "@/components/GoogleAnalytics";
import { useRouter } from "next/router";
import { useEffect } from "react";

import * as gtag from "@/lib/gtag";

config.autoAddCss = false;

const App: AppType = ({ Component, pageProps }: AppProps) => {
  const router = useRouter();
  useEffect(() => {
    const handleRouteChange = (url: URL) => {
      gtag.pageview(url);
    };
    router.events.on("routeChangeComplete", handleRouteChange);
    return () => {
      router.events.off("routeChangeComplete", handleRouteChange);
    };
  }, [router.events]);

  return (
    <>
      <NextSeo {...SEO} />
      <Meta />
      <GoogleAnalytics />
      <Layout>
        <Component {...pageProps} />
      </Layout>
    </>
  );
};

export default trpc.withTRPC(App);
