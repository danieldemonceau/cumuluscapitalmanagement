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
import TheAcquirersMultipleImage1 from "./TheAcquirersMultipleImage1.png";
import TheAcquirersMultipleImage2 from "./TheAcquirersMultipleImage2.png";
import DreamAICaption from "@/components/common/Caption/DreamAICaption";

const TheAcquirersMultiple = ({
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
              The Acquirer's Multiple Strategy
            </div>
            <div className="flex flex-row space-x-3">
              <Link href="#whatisit">What Is It?</Link>
              <div>|</div>
              <Link href="#inpractice">In Practice</Link>
              <div>|</div>
              <Link href="#theAcquirersMultipleExplanation">The Formula</Link>
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
                  The Acquirer's Multiple is a contrarian investment strategy
                  suited to long-term investors, and it approaches investing
                  from an organized, disciplined, and unemotional perspective.
                  The method identifies deeply undervalued stocks to hold for
                  one year and which will see a Regression to the mean
                </p>
                <p>
                  Tobias Carlisle describes his method in his book{" "}
                  <a
                    href="http://amzn.to/2zUj7mk"
                    target={"_blank"}
                    rel={"noreferrer"}
                  >
                    "The Acquirer's Multiple: How the Billionaire Contrarians of
                    Deep Value Beat the Market"
                  </a>
                  . The method would have had an 18.6% return per year on
                  average between 1973 and 2017 (vs 10.2% per year for the
                  S&P500){" "}
                </p>
              </div>
            </div>
            <YoutubeEmbed embedId="nsQYjz9XI2c" />
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
                    Go to{" "}
                    <a
                      href="https://acquirersmultiple.com/"
                      target="_blank"
                      rel="noreferrer"
                    >
                      The Acquirer's Multiple Investing
                    </a>
                    &nbsp;website
                    <ol className="list-decimal">
                      <li>Create an account</li>
                      <li>
                        Go to the{" "}
                        <a
                          href="https://acquirersmultiple.com/screener/large-cap/"
                          target="_blank"
                          rel="noreferrer"
                        >
                          Stock Screener
                        </a>
                        *{"   "} (only the Large Cap 1000 Screener is free)
                      </li>
                    </ol>
                  </li>
                  <li>
                    Compose your portfolio
                    <ol>
                      <li>
                        Buy X number of stocks with the lowest Acquirer's
                        Multiple scores every Y months.
                      </li>
                      <li>
                        E.g., Cumulus Capital Management buys three stocks with
                        equal-dollar amounts every single month.
                      </li>
                      <li>E.g., You can also buy 20 stocks every year.</li>
                    </ol>
                  </li>
                  <li>
                    Hold these stocks for one year, no matter what.
                    <ol>
                      <li>Do not panic sell, do not take premature profits.</li>
                      <li>
                        Only sell after one year if the stock{" "}
                        <u>is not on the list anymore</u>.
                      </li>
                      <li>
                        Depending on the Capital Gains laws in your country and
                        for tax purposes, keep winners for more than one year,
                        and sell losers before the one-year mark.
                      </li>
                    </ol>
                  </li>
                  <li>
                    Repeat the previous steps every Y months according to your
                    strategy.
                  </li>
                </ol>
                <div className="mt-4 text-sm italic">
                  * You might want to filter out Companies you do not want to
                  invest in for personal reasons.
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={TheAcquirersMultipleImage1}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            <div
              id="theAcquirersMultipleExplanation"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap scroll-mt-14"
            >
              <div className="basis-5/12 text-center pr-9">
                <h1>The Acquirer's Multiple formula</h1>
              </div>
              <div className="basis-6/12">
                <div>
                  <h3>
                    The Acquirer's Multiple Score is calculated based on the
                    ratio of
                  </h3>
                  <ul>
                    <li className="leading-5 text-base">Enterprise Value</li>
                    <li className="leading-5 text-base">Operating Earnings</li>
                  </ul>
                  <div className="mt-2">
                    <h3>The Enterprise Value is equal to</h3>
                    <ul>
                      <li className="leading-5 text-base">
                        Market capitalization
                      </li>
                      <li className="leading-5 text-base">+ Debt</li>
                      <li className="leading-5 text-base">- Cash</li>
                    </ul>
                  </div>
                  <div className="mt-2">
                    <h3>The Operating Earnings are equal to</h3>
                    <ul>
                      <li className="leading-5 text-base">Revenue</li>
                      <li className="leading-5 text-base">
                        - the cost of goods sold
                      </li>
                      <li className="leading-5 text-base">
                        - selling, general & admin costs
                      </li>
                      <li className="leading-5 text-base">
                        - depreciation & amortization
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={TheAcquirersMultipleImage2}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            {openPositionData?.length > 0 && (
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

export default TheAcquirersMultiple;
