import TheAcquirersMultiple from "@/components/Strategies/TheAcquirersMultiple";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";

const Index = () => {
  const { data: openPositionsTheAcquirersMultiple } =
    trpc.getAllPositionOpenTheAcquirersMultiples.useQuery();
  if (!openPositionsTheAcquirersMultiple) return;
  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    openPositionsTheAcquirersMultiple
  );

  const { data: closedPositionsTheAcquirersMultiple } =
    trpc.getAllPositionClosedTheAcquirersMultiples.useQuery();
  if (!closedPositionsTheAcquirersMultiple) return;
  console.log(
    `closedPositionsTheAcquirersMultiple: ${closedPositionsTheAcquirersMultiple}`
  );
  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    closedPositionsTheAcquirersMultiple
  );

  return (
    <>
      <TheAcquirersMultiple
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
