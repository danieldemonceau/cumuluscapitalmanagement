import Link from "next/link";

const MagicFormula = () => {
  return (
    <>
      <div className="font-openSans">
        {/* Banner with Title */}
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
            <h1 id="whatisit">What Is It?</h1>
            <p>
              The Magic Formula is a Value Investing Strategy developed by Joel
              Greenblatt and described in his books "The Little Book That Beats
              the Market" and the 2010 follow-up "The Little Book That Still
              Beats the Market". The Author claims the method to beat the
              S&P500, used as the market benchmark, by providing annualized
              returns of over 30%.{" "}
            </p>
            <p>
              This easy-to-follow method is particularly suited to patient Value
              Investing non-professional investors as it approaches investing
              from an organized, disciplined, and unemotional perspective while,
              at the same time, providing better returns than the market
            </p>
            <p>
              The stocks to consider are ranked based on their price (P/E) and
              Return On Capital (ROC). They are to be held for one year, no
              matter the market conditions, and then repeat the process year
              after year.{" "}
            </p>
            <h1 id="theformula">The Formula</h1>
            <p>
              The list of companies to consider investing in according to the
              Magic Formula is determined as follows: - Get a list of companies,
              the more, the merrier o Exclude Financials, Insurances, Investment
              funds, Utilities, specific holdings companies, REITs, American
              Depository Receipts (ADRs) o Consider only companies with a Market
              Capitalization of more than $USD50M - Calculate the P/E for each
              company o Lower P/E ~ "Cheap stocks." - Calculate the ROC for each
              company o High ROC ~ "Good company." - Rank each company based on
              the lowest P/E - Rank each company based on the highest ROA - Sum
              the ranks for each company - Order by lowest
            </p>
            <h1 id="inpractice">In practice</h1>
            <p>
              While the previous paragraph describes the method to get a list of
              companies to invest in according to the Magic Formula, it might
              seem cumbersome and too complicated for the average
              non-professional investor
            </p>
            <p>
              Fortunately,{" "}
              <a
                href="https://www.magicformulainvesting.com/"
                target="_blank"
                rel="noreferrer"
              >
                the Magic Formula Investing website
              </a>{" "}
              provides a screener that did the previous steps for you
            </p>
            <p>
              To apply the method, follow these steps: 1. Go to
              https://www.magicformulainvesting.com/ 2. Create an account as it
              is mandatory 3. Go to the Stock Screener
              (https://www.magicformulainvesting.com/Screening/StockScreening)
              and provide the Minimum Market Cap for the companies you consider,
              and the number of stocks list a. Choosing Companies with lower
              Market Capitalizations leads to greater volatility, and vice-versa
              b. Choosing more companies leads to more diversification and less
              volatility 4. From the list, you get, remove companies you do not
              want to invest in for whatever reason 5. Pick 5 to 7 of these
              companies, and invest 20 to 33% of your total intended capital a.
              Consider Equal dollar amount for each stock 6. Always hold each
              stock for at least one year, no matter what (do not panic sell,
              don't take premature profits) a. Depending on the Capital Gains
              laws in your country, keep winners for more than one year, and
              sell losers before the one-year mark for tax purposes 7. Repeat
              steps 3 to 5 every 2 to 3 months
            </p>
            <h1 id="gehigherreturns">Get higher returns</h1>
            <p>
              Quant Investing
              (https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test)
              thoroughly back-tested the strategy by combining the Magic Formula
              score with several ratios. The highest returns are achieved by
              considering - only companies in the top 20% on the Magic Formula
              score - companies with the highest Price Index 6 Months
            </p>
            <p>
              This combination would have had a 600.5% improvement over the best
              return of 182.8% using the Magic Formula only from June 1999 to
              June 2011. For all details and the results using other ratios and
              combinations, please refer to the Magic Formula investment
              strategy back-test (2021 update)
              (https://www.quant-investing.com/blog/magic-formula-investment-strategy-back-test).
            </p>
            <p>
              The screener on the Magic Formula Investing website
              (https://www.magicformulainvesting.com/) does unfortunately not
              give the Magic Formula scores, nor does it provide the Price Index
              6 Months ratio. You will need to use other screeners available on
              the internet to get these values. If you are a techie, I highly
              recommend automating the procedure or using this script
              https://github.com/danieldemonceau/magicformula.
            </p>
            <h1 id="currentporfolio">Current Portfolio</h1>
            <h1 id="closedpositions">Closed Positions</h1>
          </div>
          <div className="basis-1/12"></div>
        </div>
      </div>
    </>
  );
};

export default MagicFormula;
