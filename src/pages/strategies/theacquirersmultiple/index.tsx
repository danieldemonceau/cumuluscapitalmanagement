import TheAcquirersMultiple from "@/components/Strategies/TheAcquirersMultiple";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";
import { NextSeo } from "next-seo";
import SEO from "../../../../next-seo.config";

const Index = () => {
  const { data: openPositionsTheAcquirersMultiple } =
    trpc.getAllPositionOpenTheAcquirersMultiples.useQuery();
  const positionOpen: PositionOpen[] = formatDataPortfolioOpenPositions(
    openPositionsTheAcquirersMultiple ?? []
  );

  const { data: closedPositionsTheAcquirersMultiple } =
    trpc.getAllPositionClosedTheAcquirersMultiples.useQuery();
  console.log(
    `closedPositionsTheAcquirersMultiple: ${closedPositionsTheAcquirersMultiple}`
  );
  const positionClosed: PositionClosed[] = formatDataPortfolioClosedPositions(
    closedPositionsTheAcquirersMultiple ?? []
  );

  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "The Acquirers Multiple",
        }}
      />
      <TheAcquirersMultiple
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
