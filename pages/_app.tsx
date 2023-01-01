import "../styles/globals.css";
import type { AppProps } from "next/app";

import Layout from "@/components/Layout";
import { NextSeo } from "next-seo";
import SEO from "../next-seo.config";
import Meta from "@/components/Meta";
import { ApolloProvider } from "@apollo/client";
import { apolloClient } from "@/components/ApolloClient";

// import { Provider } from "react-redux";
// import { store } from "@/src//state/store";

import { config } from "@fortawesome/fontawesome-svg-core";
import "@fortawesome/fontawesome-svg-core/styles.css";
config.autoAddCss = false;

const App = ({ Component, pageProps }: AppProps) => {
  return (
    <>
      {/* <Provider store={store}> */}
      <NextSeo {...SEO} />
      <Meta />
      <ApolloProvider client={apolloClient}>
        {/* <Layout title={pageProps.title} className="h-full"> */}
        <Layout>
          <Component {...pageProps} />
        </Layout>
      </ApolloProvider>
      {/* </Provider> */}
    </>
  );
};

export default App;
