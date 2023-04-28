import About from "@/components/Home/About";

export const Index = () => {
  return <About />;
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default Index;
