import React from "react";

const Description = () => {
  return (
    <>
      <section className="p-10">
        <h1 className="text-center uppercase">Welcome!</h1>
        <div className="m-4 p-2">
          <p>
            Cumulus Capital Management actively manages a portfolio composed of
            different market ETFs and shares.
          </p>
          <p>Stocks are carefully selected based on 2 proven strategies:</p>
          <ul className="list-disc list-inside">
            <li>
              <a
                href="https://www.magicformulainvesting.com/"
                className="text-blue-700 hover:text-blue-300"
              >
                The Magic Formula
              </a>
            </li>
            <li>
              <a
                href="https://www.magicformulainvesting.com/"
                className="text-blue-700 hover:text-blue-300"
              >
                The Acquirer's Multiple
              </a>
            </li>
          </ul>
        </div>
        <div className="m-4 p-2">
          <h2>Magic Formula</h2>
        </div>
        <div className="m-4 p-2">
          <h2>The Acquirer's Multiple</h2>
        </div>
      </section>
    </>
  );
};
export default Description;
