import moneySeedImage from "@/components/Home/Description/money-seed.jpg";
import Image from "next/image";

const index = () => {
  return (
    <>
      <section className="p-10 m-4 flex flex-row">
        <div className="">
          <h1>Cumulus Capital Management</h1>
          <p>
            Don't know much about investing? Don't know where to start with your
            financial literacy? Do you want an easy set it and forget strategy
            that beats the market long-term?
          </p>
          <h2>You came to the right place!</h2>
          <p>
            Cumulus proposes 3 proven easy-to-follow strategies for everyone who
            wants to invest with little to no effort, and still beat the market!
          </p>
          <p>Just follow the instructions, it's all FREE!</p>
          <p>
            Note that these strategies are for the long-term investors who can
            have their investments stashed for 5 years or more
          </p>
          <p>
            Important reminder: Only always invest money you can afford to lose
          </p>
          <p>
            Important reminder 2: We are not financial advisors and all the
            information on this Website is for General Information Only. Please
            refer to the full disclaimer{" "}
            <a
              href="https://www.magicformulainvesting.com/"
              className="text-blue-700 hover:text-blue-300"
              target={`_self`}
            >
              here
            </a>
          </p>
          <h2>Three strategies</h2>
          <ol>
            <li>
              <a href={`/strategies/magicformula`} target={`_self`}>
                Magic Formula
              </a>
            </li>
            <li>
              <a href={`/strategies/theacquirersmultiple`} target={`_self`}>
                The Acquirer's Multiple
              </a>
            </li>
            <li>
              <a
                href={`/strategies/marketdollarcostaveraging`}
                target={`_self`}
              >
                Market Dollar-Cost Averaging
              </a>
            </li>
          </ol>
        </div>
        <div className="m-4 basis-2/6 align-middle justify-center mt-10">
          <Image
            src={moneySeedImage}
            className="h-4/5 object-cover object-top"
            alt="Hero Image"
            layout="responsive"
            height={`500px`}
          ></Image>
        </div>
      </section>
    </>
  );
};

export default index;
