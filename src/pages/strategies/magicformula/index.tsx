import MagicFormula from "@/components/Strategies/MagicFormula";
import {
  formatDataPortfolioClosedPositions,
  formatDataPortfolioOpenPositions,
} from "@/src/helpers/formatDataPortfolio";
import { PositionClosed, PositionOpen } from "@/src/types/Position.type";
import { trpc } from "@/src/utils/trpc";
import { NextSeo } from "next-seo";
import SEO from "../../../../next-seo.config";

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
      <NextSeo
        {...{
          ...SEO,
          title: "Magic Formula",
        }}
      />
      <MagicFormula
        positionOpen={positionOpen}
        positionClosed={positionClosed}
      />
    </>
  );
};

export default Index;
