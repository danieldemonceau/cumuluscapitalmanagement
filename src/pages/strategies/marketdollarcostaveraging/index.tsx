import MarketDollarCostAveraging from "@/components/Strategies/MarketDollarCostAveraging";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";
import SEO from "../../../../next-seo.config";
import { NextSeo } from "next-seo";

const Index = () => {
  const { data: openPositionsMarketDollarCostAveraging } =
    trpc.getAllPositionOpenMarketDollarCostAveraging.useQuery();
  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    openPositionsMarketDollarCostAveraging ?? []
  );

  const { data: closedPositionsMarketDollarCostAveraging } =
    trpc.getAllPositionClosedMarketDollarCostAveraging.useQuery();
  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    closedPositionsMarketDollarCostAveraging ?? []
  );

  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "DCA",
        }}
      />
      <MarketDollarCostAveraging
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
