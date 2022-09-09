import Link from "next/link";
import { useMemo } from "react";
import { PositionOpen } from "@/src/types/Position.type";
import YoutubeEmbed from "@/components/common/YoutubeEmbed";
import { Table } from "@/components/Portfolio/Table";
import { useTableColumns } from "@/components/Portfolio/useTableColumns";

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
          <div className="basis-1/12"></div>
          <div className="basis-10/12 flex flex-col w-full py-10 align-middle text-left text-black space-y-3">
            <div className="text-4xl text-left">The Magic Formula Strategy</div>
            <div className="flex flex-row space-x-3">
              <Link href="#whatisit">What Is It?</Link>
              <div>|</div>
              <Link href="#theformula">The Formula</Link>
              <div>|</div>
              <Link href="#inpractice">In Practice</Link>
              <div>|</div>
              <Link href="#gehigherreturns">Get higher returns</Link>
              <div>|</div>
              <Link href="#currentporfolio">Current Portfolio</Link>
              <div>|</div>
              <Link href="#closedpositions">Closed Positions</Link>
            </div>
          </div>
          <div className="basis-1/12"></div>
        </div>
        <div className="flex flex-row my-5">
          <div className="basis-1/12"></div>
          <div className="basis-10/12">
            <div className="flex flex-col">
              <h1 id="whatisit">What Is It?</h1>
              <p>
                The Magic Formula is a Value Investing Strategy developed by
                Joel Greenblatt and described in his books "The Little Book That
                Beats the Market" and "The Little Book That Still Beats the
                Market". The Author claims the method to beat the S&P500, used
                as the market benchmark, by providing annualized returns of over
                30%.{" "}
              </p>
              <p>
                This easy-to-follow method is particularly suited to long-term
                Investors as it approaches investing from an organized,
                disciplined, and unemotional perspective
              </p>
              <div className="mx-auto w-6/12">
                <YoutubeEmbed embedId="fzig7KJFuNU" />
              </div>
            </div>
            <div>
              <h1 id="theformula">The Formula In Practice</h1>
              <h2>How to?</h2>
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
                  From the list, remove the companies you do not want to invest
                  in for your personal reasons
                </li>
                <li>
                  Optional: For each company,
                  <ol>
                    <li>Calculate Magic Formula Score</li>
                    <li>Keep the top 20% of companies</li>
                    <li>
                      Calculate the Price Index 6 months for the 20% top, and
                      order the list in a decreasing order
                    </li>
                    <li>
                      Reason? Please check the section below the bullet list
                    </li>
                    <li>
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
                </li>
                <li>
                  Pick the top 5 to 7 of these top companies, and invest 25% of
                  your total intended capital
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
                      for tax purposes, keep winners for more than one year, and
                      sell losers before the one-year mark
                    </li>
                  </ol>
                </li>
                <li>Repeat all the previous steps every 3 months</li>
              </ol>
            </div>
            <div>
              <h1 id="gehigherreturns">Get higher returns</h1>
              <p>
                Point 4 in the Method is optional. However, following these
                steps gives statistically higher returns
              </p>
              <p>
                <a
                  href="https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test"
                  target="_blank"
                  rel="noreferrer"
                >
                  Quant Investing{" "}
                </a>
                thoroughly back-tested the strategy by combining the Magic
                Formula score with different ratios, and it turns out that
                adding the Price Index 6 Months to the top 20% of Magic Formula
                companies shows a 600.5% improvement over the best return of
                182.8% using the Magic Formula only from June 1999 to June 2011.
                Full details, as well the results with other ratios, can be
                found{" "}
                <a
                  href="https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test"
                  target="_blank"
                  rel="noreferrer"
                >
                  here{" "}
                </a>
              </p>
            </div>
            <div>
              <h1>What is the "Magic Formula"?</h1>
              <p>
                The list of companies to consider investing in according to the
                Magic Formula is determined as follows: - Get a list of
                companies, the more, the merrier o Exclude Financials,
                Insurances, Investment funds, Utilities, specific holdings
                companies, REITs, American Depository Receipts (ADRs) o Consider
                only companies with a Market Capitalization of more than $USD50M
                - Calculate the P/E for each company o Lower P/E ~ "Cheap
                stocks." - Calculate the ROC for each company o High ROC ~ "Good
                company." - Rank each company based on the lowest P/E - Rank
                each company based on the highest ROA - Sum the ranks for each
                company - Order by lowest
              </p>
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
