import MagicFormula from "@/components/Strategies/MagicFormula";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";

const Index = () => {
  const { data: openPositionsMagicFormula } =
    trpc.getAllPositionOpenMagicFormulas.useQuery();
  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    openPositionsMagicFormula ?? []
  );

  const { data: closedPositionsMagicFormula } =
    trpc.getAllPositionClosedMagicFormulas.useQuery();
  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    closedPositionsMagicFormula ?? []
  );

  return (
    <>
      <MagicFormula
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
