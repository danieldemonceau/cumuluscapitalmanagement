import Investors from "@/components/Investors";

const index = () => {
  return <Investors />;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
