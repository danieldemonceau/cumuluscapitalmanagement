import Link from "next/link";
import Image from "next/image";
import CloudImage from "./clouds.png";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { ChevronDownIcon } from "components/common/heroicons";
import { useEffect, useState } from "react";
import {
  faMagicWandSparkles,
  faCoins,
  faLineChart,
} from "@fortawesome/free-solid-svg-icons";

const Navbar = () => {
  const [strategyMenusIsVisible, setStrategyMenusIsVisible] = useState(false);
  const [isShrink, setIsShrink] = useState(false);

  const scrollFunction = () => {
    if (isShrink && window.scrollY < 80) {
      setIsShrink(false);
    } else if (!isShrink && window.scrollY > 120) {
      setIsShrink(true);
    }
  };

  useEffect(() => {
    window.addEventListener("scroll", scrollFunction);
  });

  return (
    <>
      <nav className=" top-0 z-10 h-20">
        <div
          className={`relative flex flex-row flex-wrap bg-white ${
            isShrink ? "nav-menu-shrunk" : "nav-menu-grown"
          } justify-center items-center space-x-2 2xl:space-x-10 xl:space-x-10 lg:space-x-10 md:space-x-10 sm:space-x-10 text-center 2xl:flex xl:flex lg:flex md:flex sm:flex`}
        >
          <div className="absolute left-0 ml-6 2xl:block xl:block lg:block md:block hidden">
            <a href="https://fluffyclouds.com.au" target={`_self`}>
              <Image
                src={CloudImage}
                alt={`Cloud Icon`}
                className={`${isShrink ? "scale-90" : "scale-100"}`}
              ></Image>
            </a>
          </div>
          <div className="group text-xl text-center text-black flex flex-col h-full align-middle justify-center cursor-pointer">
            <Link href="/">Home</Link>
          </div>
          <div
            className="group text-xl text-center text-black flex flex-col h-full align-middle justify-center cursor-pointer"
            onMouseEnter={() => setStrategyMenusIsVisible(() => true)}
            onMouseLeave={() => setStrategyMenusIsVisible(() => false)}
          >
            <div className="flex flex-row">
              <div className="">Strategies</div>
              <ChevronDownIcon />
            </div>
          </div>
          <div className="group text-xl text-center text-black flex flex-col h-full align-middle justify-center cursor-pointer">
            <Link href="/about">About</Link>
          </div>
          <div>|</div>
          <div className="text-sm group text-center text-black flex flex-col h-full align-middle justify-center cursor-pointer">
            <Link href="/investors">Investors</Link>
          </div>
          <div className="text-sm group text-center text-black flex flex-col h-full align-middle justify-center cursor-pointer">
            <Link href="/contactus">Contact Us</Link>
          </div>
        </div>
        {/* <div>
          <div className="align-middle flex flex-row flex-wrap bg-white justify-left items-center space-x-10 text-center 2xl:hidden xl:hidden lg:hidden md:hidden sm:hidden p-3">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth="1.5"
              stroke="currentColor"
              className="w-14 h-14"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
              />
            </svg>
          </div>
        </div> */}
      </nav>
      {/* Ribbon with Submenus */}
      <nav
        className={`fixed z-50 left-0 right-0 m-auto my-auto bg-gray-200 flex justify-center items-center text-black h-auto transition ease-in-out duration-1000 delay-150 ${
          isShrink && "-mt-[28px]"
        }
        ${
          strategyMenusIsVisible
            ? "nav-subnav-menu-active"
            : "nav-subnav-menu-inactive"
        }
        `}
        onMouseEnter={() => setStrategyMenusIsVisible(() => true)}
        onMouseLeave={() => setStrategyMenusIsVisible(() => false)}
      >
        <div className="flex flex-row space-x-10 py-2">
          <div className="uppercase group">
            <Link href={`/strategies/magicformula`}>
              <div className="flex flex-col transition ease-in-out duration-300 delay-150 group-hover:scale-110 cursor-pointer">
                <div className="flex flex-col h-full align-middle justify-center mx-3 mb-1">
                  <FontAwesomeIcon
                    icon={faMagicWandSparkles}
                    // color={`slate`}
                    // size="2x"
                    className="group-hover:text-blue-800 text-slate-700 scale-150"
                  />
                </div>
                <div className="text-base text-center flex flex-col h-full align-middle justify-center">
                  <p className="text-gray-800 group-hover:text-blue-800">
                    Magic <br />
                    Formula
                  </p>
                </div>
              </div>
            </Link>
          </div>
          <div className="uppercase group">
            <Link href={`/strategies/theacquirersmultiple`}>
              <div className="flex flex-col transition ease-in-out duration-300 delay-150 group-hover:scale-110 cursor-pointer">
                <div className="flex flex-col h-full align-middle justify-center mx-3 mb-1">
                  <FontAwesomeIcon
                    icon={faCoins}
                    // color={`slate`}
                    // size="2x"
                    className="group-hover:text-blue-800 text-slate-700 scale-150"
                  />
                </div>
                <div className="text-base text-center flex flex-col h-full align-middle justify-center">
                  <p className="text-gray-800 group-hover:text-blue-800">
                    Acquirer's <br />
                    Multiple
                  </p>
                </div>
              </div>
            </Link>
          </div>
          <div className="uppercase group">
            <Link href={`/strategies/marketdollarcostaveraging`}>
              <div className="flex flex-col transition ease-in-out duration-300 delay-150 group-hover:scale-110 cursor-pointer">
                <div className="flex flex-col h-full align-middle justify-center mx-3 mb-1">
                  <FontAwesomeIcon
                    icon={faLineChart}
                    // color={`slate`}
                    // size="2x"
                    className="group-hover:text-blue-800 text-slate-700 scale-150"
                  />
                </div>
                <div className="text-base text-center flex flex-col h-full align-middle justify-center">
                  <p className="text-gray-800 group-hover:text-blue-800">
                    Market Dollar-Cost <br />
                    Averaging
                  </p>
                </div>
              </div>
            </Link>
          </div>
        </div>
      </nav>
    </>
  );
};

export default Navbar;
