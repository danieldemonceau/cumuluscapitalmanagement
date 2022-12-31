import Terms from "@/components/Home/Terms";

const index = () => {
  return <Terms />;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default index;
