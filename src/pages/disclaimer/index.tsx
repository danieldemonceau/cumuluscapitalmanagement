import Disclaimer from "@/components/Home/Disclaimer";

const index = () => {
  return <Disclaimer />;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
