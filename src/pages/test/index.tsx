import { trpc } from "../../utils/trpc";

const IndexPage = () => {
  const { data: openPositionsMagicFormula } =
    trpc.getAllPositionOpenMagicFormulas.useQuery();
  if (!openPositionsMagicFormula) {
    return (
      <div style={styles}>
        <h1>Loading...</h1>
      </div>
    );
  }
  return (
    <div style={styles}>
      {<h1>{JSON.stringify(openPositionsMagicFormula)}</h1>}
    </div>
  );
};

export default IndexPage;

const styles = {
  width: "100vw",
  height: "100vh",
  display: "flex",
  justifyContent: "center",
  alignItems: "center",
};
