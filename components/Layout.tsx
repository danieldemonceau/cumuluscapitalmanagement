import Head from "next/head";
import Footer from "./Footer";
import Navbar from "./Navbar";
import { NextSeo } from "next-seo";
import meta from "../data/meta";
import { useEffect, useState } from "react";

const Layout = ({ children, title }: any) => {
  return (
    <>
      {/* <Head></Head> */}
      {/* SEO config */}
      {/* <NextSeo title="Home" description={`Homepage of ${meta.domainName}`} /> */}
      <div className="from-white to-white bg-gradient-to-br">
        <main>{children}</main>
      </div>
    </>
  );
};

export default Layout;
