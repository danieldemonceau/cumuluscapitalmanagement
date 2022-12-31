import moneySeedImage from "@/components/Home/Description/money-seed.jpg";
import Image from "next/image";

const index = () => {
  return (
    <>
      <section className="p-10 m-4 flex flex-row">
        <div className="">
          <h1>The Magic Formula</h1>
          <p>
            The Magic Formula is an investing strategy developed by Joel
            Greenblatt - an investor, hedge fund manager, and business
            professor.
          </p>
          <h2>Methodology</h2>
          <ol>
            <li>Go to the website https://www.magicformulainvesting.com/</li>
            <li>Choose a company size</li>
            <li>Get a list of top ranked magic formula companies</li>
            <li>
              Buy 5 - 7 of these companies, 20-33% of the capital you intend to
              invest
            </li>
            <li>
              Repeat step 4 every 2 - 3 months, until all the capital is
              invested, for a total of 20-30 stocks
            </li>
            <li>
              Always hold the investments for a year 1. For tax purposes, hold
              the winners a few days longer, and losers a few days shorter
            </li>
            <li>Continue the process for many years</li>
          </ol>
        </div>
        <div className="m-4 basis-2/6 align-middle justify-center">
          <Image
            src={moneySeedImage}
            className="h-4/5 object-cover object-top"
            alt="Hero Image"
            height={500}
          ></Image>
        </div>
      </section>
    </>
  );
};

export default index;
