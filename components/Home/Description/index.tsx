import React from "react";
import Image from "next/image";
import moneySeedImage from "./money-seed.jpg";

const Description = () => {
  return (
    <>
      <section className="px-10">
        <div className="m-4 p-2 flex flex-row">
          <div className="m-4 text-2xl basis-4/6 font-lato">
            <p>
              Portfolio actively managed and strictly following the rules of 3
              proven long-term strategies
            </p>
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
              <li>
                <a
                  href="https://www.magicformulainvesting.com/"
                  className="text-blue-700 hover:text-blue-300"
                >
                  Dollar Cost Averaging
                </a>
              </li>
            </ul>
          </div>
          <div className="m-4 bg-slate-400 basis-2/6 align-middle justify-center">
            <Image
              src={moneySeedImage}
              className="h-4/5 object-cover object-top"
              alt="Hero Image"
              layout="responsive"
              height={`500px`}
            ></Image>
          </div>
        </div>
      </section>
    </>
  );
};
export default Description;
