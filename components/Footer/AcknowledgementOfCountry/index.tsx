import paperBarkTree from "./paperBarkTree.jpg";
import AustraliaMap from "./AustraliaMap.png";
import Image from "next/image";

const AcknowledgementOfCountry = () => {
  return (
    <>
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
            <a
              href="https://unsplash.com/@davidclode?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText"
              target={`_blank`}
              rel={`noreferrer`}
            >
              David Clode
            </a>{" "}
            on{" "}
            <a
              href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText"
              target={`_blank`}
              rel={`noreferrer`}
            >
              Unsplash
            </a>
          </p>
        </div>
        <div className="basis-2/5">
          <div className="text-center h-full align-middle justify-center flex flex-col">
            <div className="basis-1/3"></div>
            <div className="basis-1/3 text-base">
              <p className="py-1">
                Cumulus Capital Management acknowledges the traditional owners
                of the land on which we stand, the{" "}
                <a
                  href="https://www.wurundjeri.com.au/"
                  target={"_blank"}
                  rel="noreferrer"
                >
                  Wurundjeri Woi Wurrung people
                </a>
                , and pays respect to their Elders, past, present and emerging,
                and extend that respect to all Aboriginal and Torres Strait
                Islander people
              </p>
              <p className="py-1">
                We acknowledge the Aboriginal and Torres Strait Islander people
                as the First Australians and celebrate and respect their unique
                cultural and spiritual relationships to the land and waters as
                we strive for equality and safety in health care.
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
    </>
  );
};

export default AcknowledgementOfCountry;
