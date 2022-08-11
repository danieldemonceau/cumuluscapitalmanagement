import React from "react";
import HorizontalBar from "../../Navbar/HorizontalBar";

const FeatureStrategies = () => {
  return (
    <section className="flex flex-col">
      <div className="bg-slate-100 basis-1/3 text-gray-700 text-xl pt-6 pb-3 text-center uppercase">
        Capital Management based on 3 Proven Strategies
      </div>
      <div className="flex flex-row">
        <div className="group pt-10 pb-14 bg-slate-100 basis-1/3 text-gray-700 text-3xl text-center">
          <p className="transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            Magic Formula
          </p>
          <p className="text-xs text-gray-600 transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            30.8% Annual Return (1988 - 2004)
          </p>
          <HorizontalBar thickness={2} />
        </div>
        <div className="group pt-10 pb-14 bg-slate-100 basis-1/3 text-gray-700 text-3xl text-center">
          <p className="transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            The Acquirer's Multiple
          </p>
          <p className="text-xs text-gray-600 transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            45% Annual Return (2007 - 2022)
          </p>
          <HorizontalBar thickness={2} />
        </div>
        <div className="group pt-10 pb-14 bg-slate-100 basis-1/3 text-gray-700 text-3xl text-center">
          <p className="transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            Dollar Cost Averaging
          </p>
          <p className="text-xs text-gray-600 transition ease-in-out duration-300 delay-150 group-hover:-translate-y-1 group-hover:scale-110">
            ~10% Annual Return (2000 - 2022)
          </p>
          <HorizontalBar thickness={2} />
        </div>
      </div>
    </section>
  );
};

export default FeatureStrategies;
