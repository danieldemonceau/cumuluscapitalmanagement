import Footer from "./Footer";
import Navbar from "./Navbar";
// import ContactUs from "./ContactUs";
import NoFinancialAdviceDisclaimer from "./NoFinancialAdviceDisclaimer";

const Layout = ({ children }: { children: React.ReactNode }) => {
  return (
    <>
      {/* <Head></Head> */}
      {/* SEO config */}
      {/* <NextSeo title="Home" description={`Homepage of ${meta.domainName}`} /> */}
      <Navbar />
      <NoFinancialAdviceDisclaimer />
      <main>{children}</main>
      {/* <ContactUs /> */}
      <Footer />
    </>
  );
};

export default Layout;
