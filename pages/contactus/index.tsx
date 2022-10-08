import ContactUs from "@/components/ContactUs";

const index = ({ recaptchaSiteKey }: { recaptchaSiteKey: string }) => {
  return <ContactUs recaptchaSiteKey={recaptchaSiteKey} />;
};

export const getServerSideProps = async () => {
  const recaptchaSiteKey = process.env.RECAPTCHA_SITEKEY_V2 ?? "";

  return { props: { recaptchaSiteKey } };
};

export default index;
