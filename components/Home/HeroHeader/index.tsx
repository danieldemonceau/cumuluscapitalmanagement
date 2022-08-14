import heroImage from "./hero.jpg";
import Image from "next/image";

const Hero = () => {
  return (
    <>
      <header>
        <div className="relative bg-black text-gray-300">
          {/* Hero Image */}
          <Image
            className="h-4/5 object-cover object-top"
            src={heroImage}
            alt="Hero Image"
            layout="responsive"
            height={`2100px`}
          />
          <div className="absolute h-full w-full top-0 ">
            <div className="flex flex-row h-full relative">
              {/* Left Side of Hero - Transparent Curtain */}
              <div className="basis-1/2 relative">
                {/* Background filter */}
                <div className="absolute bg-blue-900 opacity-75 brightness-50 h-full w-full"></div>
                {/* Header Text */}
                <div className="relative flex flex-col items-left justify-center text-white h-full px-28">
                  <div className="text-left text-6xl my-1">
                    Cumulus Capital
                    <br /> Management
                  </div>
                  {/* Description */}
                  <div className="text-left text-xl my-1">
                    Proven Value Investing Strategies for Patient
                    non-professionals to invest in the Long-Term.
                  </div>
                </div>
                <div></div>
              </div>
              <div className="basis-1/2"></div>
            </div>
          </div>
        </div>
      </header>
    </>
  );
};

export default Hero;
