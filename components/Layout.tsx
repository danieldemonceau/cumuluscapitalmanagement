import Head from "next/head";
import Footer from "./Footer";
import Navbar from "./Navbar";
import { NextSeo } from "next-seo";
import meta from "../data/meta";
import { useEffect, useState } from "react";
import ContactUs from "./ContactUs";

const Layout = ({ children, title }: any) => {
  return (
    <>
      {/* <Head></Head> */}
      {/* SEO config */}
      {/* <NextSeo title="Home" description={`Homepage of ${meta.domainName}`} /> */}
      <Navbar />
      <main>{children}</main>
      <ContactUs />
      <Footer />
    </>
  );
};

export default Layout;
