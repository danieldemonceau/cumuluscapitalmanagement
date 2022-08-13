import paperBarkTree from "./paperBarkTree.jpg";
import AustraliaMap from "./AustraliaMap.png";
import Image from "next/image";
import Ribbon from "./Ribbon";

const Footer = () => {
  return (
    <>
      <footer className="">
        <div className="text-white text-lg bg-slate-900">
          <div className="flex flex-row w-full">
            {/* Filler */}
            <div className="basis-1/5 p-10"></div>
            <div className="basis-1/5 p-10">
              <Image
                src={paperBarkTree}
                alt={`Image of Paper Bark Tree`}
                layout={`responsive`}
              ></Image>
              <p className="text-sm">
                Photo by{" "}
                <a href="https://unsplash.com/@davidclode?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">
                  David Clode
                </a>{" "}
                on{" "}
                <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">
                  Unsplash
                </a>
              </p>
            </div>
            <div className="basis-2/5">
              <div className="text-center h-full align-middle justify-center flex flex-col">
                <div className="basis-1/3"></div>
                <div className="basis-1/3">
                  <p>
                    Cumulus Capital Management acknowledges the traditional
                    owners of the land on which we stand, the{" "}
                    <a
                      href="https://www.wurundjeri.com.au/"
                      target={"_blank"}
                      rel="noreferrer"
                    >
                      Wurundjeri Woi Wurrung people
                    </a>
                    , and pays respect to their Elders, past and present.
                    Aboriginal and Torres Strait Islander people
                  </p>
                </div>
                <div className="basis-1/3 flex flex-row">
                  <div className="w-full text-center align-middle justify-center">
                    <Image
                      src={AustraliaMap}
                      alt={`Map of Australia`}
                      layout={`intrinsic`}
                      width={75}
                      height={75}
                    ></Image>
                  </div>
                </div>
              </div>
            </div>
          </div>
          {/* Credits */}
          <div className="text-sm">
            <div>Credits</div>
            <a
              target="_blank"
              href="https://icons8.com/icon/OFU5h8HeWK3z/clouds"
              rel="noreferrer"
            >
              Clouds
            </a>{" "}
            icon by{" "}
            <a target="_blank" href="https://icons8.com" rel="noreferrer">
              Icons8
            </a>
          </div>
          <Ribbon />
        </div>
      </footer>
    </>
  );
};

export default Footer;
