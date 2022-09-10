import Link from "next/link";
import { useMemo } from "react";
import { PositionOpen } from "@/src/types/Position.type";
import YoutubeEmbed from "@/components/common/YoutubeEmbed";
import { Table } from "@/components/Portfolio/Table";
import { useTableColumns } from "@/components/Portfolio/useTableColumns";
import Image from "next/image";
// import MagicFormulaImage1 from "./MagicFormulaImage1.png";
import MagicFormulaImage11 from "./MagicFormulaImage11.png";
import MagicFormulaImage2 from "./MagicFormulaImage2.png";
import MagicFormulaImage3 from "./MagicFormulaImage3.png";

const MagicFormula = ({ positionOpen }: { positionOpen: PositionOpen[] }) => {
  const [columns] = useTableColumns("open");

  const data: PositionOpen[] = useMemo<PositionOpen[]>(
    () => positionOpen,
    [positionOpen]
  );

  return (
    <>
      <div className="font-openSans">
        <div className="flex flex-row bg-blue-100">
          <div className="basis-2/12"></div>
          <div className="basis-8/12 flex flex-col w-full py-10 align-middle text-left text-black space-y-3">
            <div className="text-4xl text-left">The Magic Formula Strategy</div>
            <div className="flex flex-row space-x-3">
              <Link href="#whatisit">What Is It?</Link>
              <div>|</div>
              <Link href="#theformula">The Formula</Link>
              <div>|</div>
              <Link href="#inpractice">In Practice</Link>
              <div>|</div>
              <Link href="#gethigherreturns">Get higher returns</Link>
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
            <div className="flex mt-16 mb-16">
              <div className="basis-6/12 align-middle justify-center my-auto text-center">
                <h1 id="whatisit">What Is It?</h1>
              </div>
              <div className="basis-5/12">
                <p>
                  The Magic Formula is an easy-to-follow method particularly
                  suited to long-term Investors as it approaches investing from
                  an organized, disciplined, and unemotional perspective
                </p>
                <p>
                  The Method was developed by Joel Greenblatt and described in
                  his books "The Little Book That Beats the Market" and "The
                  Little Book That Still Beats the Market". The Author claims
                  the method to beat the S&P500, used as the market benchmark,
                  by providing annualized returns of over 30%.{" "}
                </p>
              </div>
            </div>
            <div className="mx-auto justify-center align-middle mt-14">
              <YoutubeEmbed embedId="fzig7KJFuNU" />
            </div>
            <div className="flex mt-14 mb-14">
              <div className="basis-5/12 text-center mt-32">
                <h1 id="theformula">In Practice</h1>
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
                    <Link href="#gethigherreturns">here</Link>
                  </li>
                  <li>
                    Pick the top 5 to 7 of these top companies, and invest 25%
                    of your total intended capital
                    <ol>
                      <li>Consider Equal dollar amount for each stock</li>
                    </ol>
                  </li>
                  <li>
                    Hold these stocks for one year, no matter what
                    <ol>
                      <li>Do not panic sell, don't take premature profits</li>
                      <li>
                        Depending on the Capital Gains laws in your country and
                        for tax purposes, keep winners for more than one year,
                        and sell losers before the one-year mark
                      </li>
                    </ol>
                  </li>
                  <li>Repeat all the previous steps every 3 months</li>
                </ol>
              </div>
            </div>
            <div className="align-middle justify-center mx-auto mt-16 mb-16">
              <Image
                src={MagicFormulaImage11}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
            </div>
            <div className="flex mb-16">
              <div className="basis-5/12">
                <h1 id="gethigherreturns">Want higher returns?</h1>
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
                  Formula score and the highest Price Index 6 Months
                </p>
                <p>
                  The backtest on the period from June 1999 to June 2011 showed
                  a 600.5% improvement over the best return of 182.8% using the
                  Magic Formula alone. Find the complete results{" "}
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

            <div className="align-middle justify-center mx-auto mt-16 mb-16">
              <Image
                src={MagicFormulaImage2}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
            </div>
            <div id="magicFormulaExplanation" className="flex">
              <div className="basis-5/12 pr-9">
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
                      Calculate the ROC for each company (or ROA sometimes)
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
            <div className="align-middle justify-center mx-auto mt-16 mb-16">
              <Image
                src={MagicFormulaImage3}
                alt={`Art Images Banner`}
                width={1045}
                height={464}
              ></Image>
            </div>
            <div>
              <h1 id="currentporfolio">Current Portfolio</h1>
              <Table columns={columns} data={data} />
            </div>
            <h1 id="closedpositions">Closed Positions</h1>
          </div>
          <div className="basis-1/12"></div>
        </div>
      </div>
    </>
  );
};

export default MagicFormula;
