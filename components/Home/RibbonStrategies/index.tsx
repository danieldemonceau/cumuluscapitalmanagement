import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {} from "@fortawesome/free-regular-svg-icons";

import {
  faMagicWandSparkles,
  faCoins,
  faLineChart,
} from "@fortawesome/free-solid-svg-icons";
import Link from "next/link";

// import {
//   solid,
//   regular,
//   brands,
// } from "@fortawesome/fontawesome-svg-core/import.macro"; // <-- import styles to be used

const FeatureStrategies = () => {
  return (
    <section className="h-full bg-gray-900">
      <div className="flex flex-row h-20 mx-20">
        <div className="group basis-1/4 text-xl text-center text-gray-100 flex flex-col h-full align-middle justify-center">
          Three Strategies
        </div>
        <div className="group flex flex-row basis-1/4 cursor-pointer justify-center">
          <Link
            href={`/strategies/magicformula`}
            className="group flex flex-row basis-1/4"
          >
            <div className="flex flex-row transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
              <div className="flex flex-col h-full align-middle justify-center mx-3">
                <FontAwesomeIcon
                  icon={faMagicWandSparkles}
                  color={`white`}
                  size="2x"
                />
              </div>
              <div className="text-xl text-center flex flex-col h-full align-middle justify-center">
                <p className="text-gray-100">Magic Formula</p>
                <p className="text-xs text-gray-300 ">
                  30.8% Annual Return (1988 - 2004)
                </p>
              </div>
            </div>
          </Link>
        </div>
        <div className="group flex flex-row basis-1/4 cursor-pointer justify-center">
          <Link
            href={`/strategies/acquirermultiple`}
            className="group flex flex-row basis-1/4"
          >
            <div className="flex flex-row transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
              <div className="flex flex-col h-full align-middle justify-center mx-3">
                <FontAwesomeIcon icon={faCoins} color={`white`} size="2x" />
              </div>
              <div className="text-xl text-center flex flex-col h-full align-middle justify-center">
                <p className="text-gray-100">The Acquirer's Multiple</p>
                <p className="text-xs text-gray-300 ">
                  45% Annual Return (2007 - 2022)
                </p>
              </div>
            </div>
          </Link>
        </div>
        <div className="group flex flex-row basis-1/4 cursor-pointer justify-center">
          <Link
            href={`/strategies/dollarcostaveraging`}
            className="group flex flex-row basis-1/4"
          >
            <div className="flex flex-row transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
              <div className="flex flex-col h-full align-middle justify-center mx-3">
                <FontAwesomeIcon icon={faLineChart} color={`white`} size="2x" />
              </div>
              <div className="text-xl text-center flex flex-col h-full align-middle justify-center">
                <p className="text-gray-100">Dollar Cost Averaging</p>
                <p className="text-xs text-gray-300 ">
                  ~10% Annual Return (2000 - 2022)
                </p>
              </div>
            </div>
          </Link>
        </div>
      </div>
    </section>
  );
};

export default FeatureStrategies;
