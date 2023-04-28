import Privacy from "@/components/Home/Privacy";

const index = () => {
  return <Privacy />;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
