/**
 * This is the API-handler of your app that contains all your API routes.
 * On a bigger app, you will probably want to split this file up into multiple files.
 */
import * as trpcNext from "@trpc/server/adapters/next";
import { pc, router } from "../../../server/trpc/trpc";
import { createContext } from "../../../server/trpc/context";
import { prisma } from "@/src/server/utils/prisma";

const appRouter = router({
  getExchangeList: pc.query(async () => {
    const exchanges = await prisma.exchange.findMany();
    return exchanges;
  }),
  getAllPositionOpenMagicFormulas: pc.query(async () => {
    const allPositionOpenMagicFormulas =
      await prisma.position_open_magic_formula.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          price_current: true,
          price_current_date: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionOpenMagicFormulas;
  }),
  getAllPositionClosedMagicFormulas: pc.query(async () => {
    const allPositionClosedMagicFormulas =
      await prisma.position_closed_magic_formula.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          close_timestamp: true,
          price_closed_average: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionClosedMagicFormulas;
  }),
  getAllPositionOpenTheAcquirersMultiples: pc.query(async () => {
    const allPositionOpenTheAcquirersMultiple =
      await prisma.position_open_the_acquirers_multiple.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          price_current: true,
          price_current_date: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionOpenTheAcquirersMultiple;
  }),
  getAllPositionClosedTheAcquirersMultiples: pc.query(async () => {
    const allPositionClosedTheAcquirersMultiples =
      await prisma.position_closed_the_acquirers_multiple.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          close_timestamp: true,
          price_closed_average: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionClosedTheAcquirersMultiples;
  }),
  getAllPositionOpenMarketDollarCostAveraging: pc.query(async () => {
    const allPositionOpenMarketDollarCostAveraging =
      await prisma.position_open_market_dollar_cost_averaging.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          price_current: true,
          price_current_date: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionOpenMarketDollarCostAveraging;
  }),
  getAllPositionClosedMarketDollarCostAveraging: pc.query(async () => {
    const allPositionClosedMarketDollarCostAveraging =
      await prisma.position_closed_market_dollar_cost_averaging.findMany({
        select: {
          id: true,
          type: true,
          asset: true,
          open_timestamp: true,
          price_opened_average: true,
          close_timestamp: true,
          price_closed_average: true,
          pl_percent: true,
          strategy_name: true,
        },
      });
    return allPositionClosedMarketDollarCostAveraging;
  }),
});

export type AppRouter = typeof appRouter;

export default trpcNext.createNextApiHandler({
  router: appRouter,
  createContext,
});
