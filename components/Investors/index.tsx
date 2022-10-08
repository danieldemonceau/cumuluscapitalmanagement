import Image from "next/image";
import DreamAICaption from "../common/Caption/DreamAICaption";
import InvestorsImage1 from "./InvestorsImage1.png";

const Investors = () => {
  return (
    <div>
      {" "}
      <div className="font-openSans">
        <div className="flex flex-row my-5">
          <div className="basis-1/12"></div>
          <div className="flex flex-col basis-10/12">
            <h1>Investors</h1>
            <section className="p-10 m-4 flex flex-row">
              <div className="basis-10/12">
                <h2>Want to invest?</h2>
                <p>
                  You can invest in the strategy via Social Trading by following
                  and copying me{" "}
                  <a
                    href={`https://www.etoro.com/people/danieldemonceau`}
                    target={`_blank`}
                    rel={`noreferrer`}
                  >
                    here
                  </a>
                  .
                </p>
              </div>

              <div className="align-middle justify-center mx-auto mt-16 mb-16 scroll-mt-14">
                <Image
                  src={InvestorsImage1}
                  alt={`Art Images Banner`}
                  width={1045}
                  height={464}
                ></Image>
                <DreamAICaption />
              </div>
            </section>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Investors;
