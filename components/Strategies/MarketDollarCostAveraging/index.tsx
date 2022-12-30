import Link from "next/link";
import { useMemo } from "react";
import { PositionOpen, PositionClosed } from "@/src/types/Position.type";
import YoutubeEmbed from "@/components/common/YoutubeEmbed";
import {
  TableOpenPositions,
  TableClosedPositions,
} from "@/components/Portfolio/Table";
import {
  useTableColumnsOpenPositions,
  useTableColumnsClosedPositions,
} from "@/components/Portfolio/useTableColumns";
import Image from "next/image";
import MarketDollarCostAveragingImage1 from "./MarketDollarCostAveragingImage1.png";
import MarketDollarCostAveragingImage2 from "./MarketDollarCostAveragingImage2.png";
import DreamAICaption from "@/components/common/Caption/DreamAICaption";

const MarketDollarCostAveraging = ({
  positionOpen,
  positionClosed,
}: {
  positionOpen: PositionOpen[];
  positionClosed: PositionClosed[];
}) => {
  const [columnsOpen] = useTableColumnsOpenPositions();
  const [columnsClosed] = useTableColumnsClosedPositions();

  const openPositionData: PositionOpen[] = useMemo<PositionOpen[]>(
    () => positionOpen,
    [positionOpen]
  );

  const closedPositionData: PositionClosed[] = useMemo<PositionClosed[]>(
    () => positionClosed,
    [positionClosed]
  );

  return (
    <>
      <div className="font-openSans">
        <div className="flex flex-row bg-blue-100">
          <div className="basis-1/12"></div>
          <div className="basis-9/12 flex flex-col w-full py-10 align-middle text-left text-black space-y-3">
            <div className="text-4xl text-left">
              The Market Dollar-Cost Averaging Strategy
            </div>
            <div className="flex flex-row space-x-3">
              <Link href="#whatisit">What Is It?</Link>
              <div>|</div>
              <Link href="#inpractice">In Practice</Link>
              <div>|</div>
              <Link href="#dollarCostAveragingExplanation">Description</Link>
              <div>|</div>
              <Link href="#currentporfolio">Current Portfolio</Link>
              <div>|</div>
              <Link href="#closedpositions">Closed Positions</Link>
            </div>
          </div>
          <div className="basis-2/12"></div>
        </div>
        <div className="flex flex-row my-5">
          <div className="basis-1/12"></div>
          <div className="flex flex-col basis-10/12">
            <div
              id="whatisit"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap mt-16 mb-16 scroll-mt-14"
            >
              <div className="basis-6/12 align-middle justify-center my-auto text-center">
                <h1>What Is It?</h1>
              </div>
              <div className="basis-5/12">
                <p>
                  Market Dollar-Cost Averaging (DCA) invests the same amount
                  automatically in the same security at regular intervals,
                  regardless of the price of the security. The strategy is a
                  Systematic Investment Plan (SIP) in its simplest form, and
                  helps build wealth by ignoring the volatility.
                </p>
                <p>
                  Cumulus Capital Management considers that the client doesn't
                  start with a significant amount to invest and has instead
                  savings building up over time and coming from regular returns
                  (paychecks, investment returns, rents, etc.).
                </p>
                <p>
                  Long-time investors starting with a large amount, on the other
                  hand, should do their due diligence on whether or not a
                  lump-sum investing is more suitable.
                </p>
              </div>
            </div>
            <YoutubeEmbed embedId="sCqox8Mfm58" />
            <div
              id="inpractice"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap mt-14 mb-14 scroll-mt-14"
            >
              <div className="basis-5/12 text-center mt-32">
                <h1>In Practice</h1>
              </div>
              <div className="basis-6/12">
                <ol className="list-decimal">
                  <li>
                    Based on your income and expenses, define how much money you
                    can save in a period of time
                    <ol>
                      <li>For example, how much money you save per month</li>
                    </ol>
                  </li>
                  <li>
                    Chose a Market ETF or Mutual Fund to invest your regular
                    saving in every X months
                    <ol>
                      <li>The market benchmark is usually the S&P500</li>
                      <li>For your broker, choose one with the lowest fee</li>
                      <li>
                        You can decide to invest in other markets, such as the
                        EURO STOXX 50
                      </li>
                      <li>
                        You can also decide to invest in more than one market
                        ETF
                      </li>
                      <li>
                        Cumulus Capital Management invests in ETFs according its{" "}
                        <a href={`/about`} target={`_self`}>
                          values
                        </a>
                      </li>
                    </ol>
                  </li>
                </ol>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={MarketDollarCostAveragingImage1}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            <div
              id="dollarCostAveragingExplanation"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap scroll-mt-14"
            >
              <div className="basis-5/12 text-center pr-9">
                <h1>The idea behind DCA</h1>
              </div>
              <div className="basis-6/12">
                <div>
                  <p>
                    Having savings sitting in a bank account is not ideal. The
                    bank’s admin fees usually reduce further the earned savings.
                    Therefore, investors should invest their savings in
                    securities than have a higher Return On Investment (ROI).
                  </p>
                  <p>
                    One idea is to invest the savings “in the market” with good
                    historical returns. The S&P500, for example, returned an
                    average of 11.88% between 1957 and the end of 2021 (
                    <a
                      href={`https://www.investopedia.com/ask/answers/042415/what-average-annual-return-sp-500.asp`}
                      target={`_blank`}
                      rel={`noreferrer`}
                    >
                      source
                    </a>
                    ). This return doubles the initial investment every six
                    years.
                  </p>
                  <p>
                    By buying at regular intervals with the same dollar amount,
                    investors buy more of the same securities when prices go
                    down and less of the same asset when prices go up.
                  </p>
                  <p>
                    Long-term investors in Market ETFs should pay close
                    attention to the payout dividends and decide whether or not
                    to reinvest them immediately to compound long-term returns.
                  </p>
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={MarketDollarCostAveragingImage2}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            {openPositionData.length > 0 && (
              <div>
                <h1 id="currentporfolio">Current Portfolio</h1>
                <TableOpenPositions
                  columns={columnsOpen}
                  data={openPositionData}
                />
              </div>
            )}
            {closedPositionData.length > 0 && (
              <div>
                <h1 id="closedpositions scroll-mt-14">Closed Positions</h1>
                <TableClosedPositions
                  columns={columnsClosed}
                  data={closedPositionData}
                />
              </div>
            )}
          </div>
          <div className="basis-1/12"></div>
        </div>
      </div>
    </>
  );
};

export default MarketDollarCostAveraging;
