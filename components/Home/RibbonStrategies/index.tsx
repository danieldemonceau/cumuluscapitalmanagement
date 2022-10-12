import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {} from "@fortawesome/free-regular-svg-icons";

import {
  faMagicWandSparkles,
  faCoins,
  faLineChart,
} from "@fortawesome/free-solid-svg-icons";
import Link from "next/link";

const FeatureStrategies = () => {
  return (
    <section className="h-full bg-gray-900">
      <div className="flex flex-row h-20 mx-20">
        <div className="group basis-1/4 lg:text-xl md:text-base text-center text-gray-100 flex flex-col h-full align-middle justify-center text-xs">
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
              <div className="lg:text-xl md:text-base sm:text-sm text-center flex flex-col h-full text-xs align-middle justify-center">
                <div className="text-gray-100">Magic Formula</div>
                <div className="2xl:text-xs xl:text-xs lg:text-xs md:text-xs md:flex sm:text-xs text-gray-300 hidden">
                  30.8% Annual Return (1988 - 2004)
                </div>
              </div>
            </div>
          </Link>
        </div>
        <div className="group flex flex-row basis-1/4 cursor-pointer justify-center">
          <Link
            href={`/strategies/theacquirersmultiple`}
            className="group flex flex-row basis-1/4"
          >
            <div className="flex flex-row transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
              <div className="flex flex-col h-full align-middle justify-center mx-3">
                <FontAwesomeIcon icon={faCoins} color={`white`} size="2x" />
              </div>
              <div className="lg:text-xl md:text-base sm:text-sm text-center flex flex-col h-full text-xs align-middle justify-center">
                <div className="text-gray-100">The Acquirer's Multiple</div>
                <div className="2xl:text-xs xl:text-xs lg:text-xs md:text-xs md:flex sm:text-xs text-gray-300 hidden">
                  45% Annual Return (2007 - 2022)
                </div>
              </div>
            </div>
          </Link>
        </div>
        <div className="group flex flex-row basis-1/4 cursor-pointer justify-center">
          <Link
            href={`/strategies/marketdollarcostaveraging`}
            className="group flex flex-row basis-1/4"
          >
            <div className="flex flex-row transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
              <div className="flex flex-col h-full align-middle justify-center mx-3">
                <FontAwesomeIcon icon={faLineChart} color={`white`} size="2x" />
              </div>
              <div className="lg:text-xl md:text-base sm:text-sm text-center flex flex-col h-full text-xs align-middle justify-center">
                <div className="text-gray-100">
                  Market Dollar-Cost Averaging
                </div>
                <div className="2xl:text-xs xl:text-xs lg:text-xs md:text-xs sm:text-xs md:flex text-gray-300 hidden">
                  ~11.88% Annual Return (2000 - 2022)
                </div>
              </div>
            </div>
          </Link>
        </div>
      </div>
    </section>
  );
};

export default FeatureStrategies;
