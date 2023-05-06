import ContactUs from "@/components/ContactUs";
import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";

const index = ({ recaptchaSiteKey }: { recaptchaSiteKey: string }) => {
  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "Contact us",
        }}
      />
      <ContactUs recaptchaSiteKey={recaptchaSiteKey} />
    </>
  );
};

export const getServerSideProps = async () => {
  const recaptchaSiteKey = process.env.RECAPTCHA_SITEKEY_V2 ?? "";

  return { props: { recaptchaSiteKey } };
};

export default index;
