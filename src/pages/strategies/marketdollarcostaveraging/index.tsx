import MarketDollarCostAveraging from "@/components/Strategies/MarketDollarCostAveraging";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";

const Index = () => {
  const { data: openPositionsMarketDollarCostAveraging } =
    trpc.getAllPositionOpenMarketDollarCostAveraging.useQuery();
  if (!openPositionsMarketDollarCostAveraging) return;
  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    openPositionsMarketDollarCostAveraging
  );

  const { data: closedPositionsMarketDollarCostAveraging } =
    trpc.getAllPositionClosedMarketDollarCostAveraging.useQuery();
  if (!closedPositionsMarketDollarCostAveraging) return;
  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    closedPositionsMarketDollarCostAveraging
  );

  return (
    <>
      <MarketDollarCostAveraging
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
