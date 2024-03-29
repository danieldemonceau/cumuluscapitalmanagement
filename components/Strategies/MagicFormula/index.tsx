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
import MagicFormulaImage1 from "./MagicFormulaImage1.png";
import MagicFormulaImage2 from "./MagicFormulaImage2.png";
import MagicFormulaImage3 from "./MagicFormulaImage3.png";
import DreamAICaption from "@/components/common/Caption/DreamAICaption";

const MagicFormula = ({
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
            <div className="text-4xl text-left">The Magic Formula Strategy</div>
            <div className="flex flex-row space-x-3 w-full sm:w-11/12 md:w-10/12 lg:w-9/12 xl:w-8/12">
              <Link href="#whatisit">What Is It?</Link>
              <div>|</div>
              <Link href="#inpractice">In Practice</Link>
              <div>|</div>
              <Link href="#wanthigherreturns">Get higher returns</Link>
              <div>|</div>
              <Link href="#magicFormulaExplanation">The Formula</Link>
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
                  The Magic Formula is an organized, disciplined, and
                  unemotional approach to investing that is particularly
                  suitable for <b>long-term investors</b>. It's an
                  easy-to-follow method that can help investors achieve their
                  financial goals with confidence.
                </p>
                <p>
                  The Magic Formula was developed by Joel Greenblatt and is
                  described in his books{" "}
                  <a
                    href="https://www.amazon.com/Little-Book-That-Beats-Market/dp/0471733067/"
                    target={"_blank"}
                    rel={"noreferrer"}
                  >
                    "The Little Book That Beats the Market"
                  </a>
                  and{" "}
                  <a
                    href="https://www.amazon.com/Little-Book-Still-Beats-Market/dp/0470624159"
                    target={"_blank"}
                    rel={"noreferrer"}
                  >
                    "The Little Book That Still Beats the Market"
                  </a>{" "}
                  According to the author, the method can beat the S&P500, which
                  is often used as a market benchmark, by providing{" "}
                  <b>annualized returns of over 30%</b>. With its proven track
                  record, the Magic Formula can be a valuable tool for investors
                  looking to build a strong investment portfolio.
                </p>
              </div>
            </div>
            <YoutubeEmbed embedId="fzig7KJFuNU" />
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
                    Go to the{" "}
                    <a
                      href="https://www.magicformulainvesting.com/"
                      target="_blank"
                      rel="noreferrer"
                    >
                      Magic Formula Investing website
                    </a>
                    <ol className="list-decimal">
                      <li>Create an account</li>
                      <li>
                        Go the{" "}
                        <a
                          href="https://www.magicformulainvesting.com/Screening/StockScreening"
                          target="_blank"
                          rel="noreferrer"
                        >
                          Stock Screener
                        </a>
                      </li>
                    </ol>
                  </li>
                  <li>
                    Enter a value for the Minimum Market Cap for, and the number
                    of, companies you consider investing in
                    <ol>
                      <li>
                        Companies with lower Market Capitalizations leads to
                        greater volatility, and vice-versa
                      </li>
                      <li>
                        More companies means more diversification and less
                        volatility
                      </li>
                    </ol>
                  </li>
                  <li>
                    From the list, remove the companies you do not want to
                    invest in for your personal reasons
                  </li>
                  <li>
                    Optional: For higher return, please see{" "}
                    <Link href="#wanthigherreturns" target={"_self"}>
                      here
                    </Link>
                  </li>
                  <li>
                    Pick the top 5* to 7* of these top companies, and invest
                    25%* of your total intended capital
                    <ol>
                      <li>Consider Equal dollar amount for each stock</li>
                    </ol>
                  </li>
                  <li>
                    Hold these stocks for one year, no matter what
                    <ol>
                      <li>Do not panic sell, do not take premature profits</li>
                      <li>
                        Depending on the Capital Gains laws in your country and
                        for tax purposes, keep winners for more than one year,
                        and sell losers before the one-year mark
                      </li>
                    </ol>
                  </li>
                  <li>Repeat all the previous steps every 3 months**</li>
                </ol>
                <div className="mt-4">
                  <div className="text-sm italic">
                    * You can pick more than 7 or less than 5 stocks depending
                    on your allocated capital
                  </div>
                  <div className="text-sm italic">
                    ** You can also decide to repeat the cycle more frequently
                    than 3 months, or less frequently
                  </div>
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={MagicFormulaImage1}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            <div
              id="wanthigherreturns"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap mb-16 scroll-mt-14"
            >
              <div className="basis-5/12 text-center">
                <h1>Want higher returns?</h1>
              </div>
              <div className="basis-6/12">
                <p>
                  <a
                    href="https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test"
                    target="_blank"
                    rel="noreferrer"
                  >
                    Quant Investing{" "}
                  </a>
                  thoroughly back-tested the strategy by combining the Magic
                  Formula score for each stock with different ratios. Get the
                  highest return by combining the stocks with the highest Magic
                  Formula score and the highest <b>Price Index 6 Months</b>
                </p>
                <p>
                  The backtest on the period from June 1999 to June 2011 showed
                  a <b>600.5% improvement</b> over the best return of 182.8%
                  using the Magic Formula alone. Find the complete results{" "}
                  <a
                    href="https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test"
                    target="_blank"
                    rel="noreferrer"
                  >
                    here{" "}
                  </a>
                </p>
                <div>
                  For each company,
                  <ol>
                    <li className="text-[14px] leading-5">
                      Calculate Magic Formula Score (details{" "}
                      <Link href="#magicFormulaExplanation">here</Link>)
                    </li>
                    <li className="text-[14px] leading-5">
                      Keep the top 20% of companies
                    </li>
                    <li className="text-[14px] leading-5">
                      Calculate the Price Index 6 months these companies, and
                      order the list in a decreasing order
                    </li>
                    <li className="text-[14px] leading-5">
                      If you're a techie, use the Python script provided{" "}
                      <a
                        href="https://github.com/danieldemonceau/magicformula"
                        target="_blank"
                        rel="noreferrer"
                      >
                        here
                      </a>
                    </li>
                  </ol>{" "}
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={MagicFormulaImage2}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
              <DreamAICaption />
            </div>
            <div
              id="magicFormulaExplanation"
              className="md:flex md:flex-row lg:flex lg:flex-row xl:flex xl:flex-row 2xl:flex 2xl:flex-row sm:flex-wrap scroll-mt-14"
            >
              <div className="basis-5/12 text-center pr-9">
                <h1>The "Magic Formula" formula</h1>
              </div>
              <div className="basis-6/12">
                <div>
                  The Magic Formula Score is determined as followed
                  <ol>
                    <li className="leading-7">
                      From a list of companies, remove the following ones:
                      <ul>
                        <li className="leading-5">Financials</li>
                        <li className="leading-5">Insurances</li>
                        <li className="leading-5">Investment funds</li>
                        <li className="leading-5">
                          Utilities, specific holdings companies
                        </li>
                        <li className="leading-5">REITs</li>
                        <li className="leading-5">
                          American Depository Receipts (ADRs)
                        </li>
                      </ul>
                    </li>
                    <li className="leading-7">{`Keep companies with a Market Capitalization of > $50M`}</li>
                    <li className="leading-7">
                      Calculate, or get, the P/E for each company
                      <ul>
                        <li className="leading-5">Low P/E ~ "Cheap Stock"</li>
                      </ul>
                    </li>
                    <li className="leading-7">
                      Calculate the Return On Capital (ROC) for each company (or
                      Return On Asset (ROA) sometimes)
                      <ul>
                        <li className="leading-5">High ROC ~ "Good Company"</li>
                      </ul>
                    </li>
                    <li className="leading-7">
                      Rank each company by lowest P/E
                    </li>
                    <li className="leading-7">
                      Rank each company based on the highest ROC
                    </li>
                    <li className="leading-7">
                      Simply Sum the ranks for each company
                    </li>
                    <li className="leading-7">Order by Lowest</li>
                    <li className="leading-7">Et voila!!</li>
                  </ol>
                </div>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
              <Image
                src={MagicFormulaImage3}
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

export default MagicFormula;
