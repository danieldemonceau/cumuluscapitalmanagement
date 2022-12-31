import Image from "next/image";
import AboutImage1 from "./AboutImage1.jpg";
import AboutImage2 from "./AboutImage2.jpg";
import AboutImage3 from "./AboutImage3.jpg";

const About = () => {
  return (
    <div className="font-openSans">
      <div className="flex flex-row my-5">
        <div className="basis-1/12"></div>
        <div className="flex flex-col basis-10/12">
          <h1>About</h1>
          <section className="p-10 m-4 flex flex-row">
            <div className="basis-10/12">
              <h2>Disclaimer</h2>
              <p>
                Cumulus Capital Management provides Investment Strategy ideas
                that are not financial advice. However, every investor should do
                their due diligence when it comes to personal investment, and
                Cumulus Capital Management, Fluffy Clouds Avenue Pty Ltd will
                not be held responsible for any damage resulting from using the
                information on this website for personal use.
              </p>
            </div>
            <div className="m-4 basis-2/12 align-middle justify-center">
              <Image
                src={AboutImage1}
                className="object-cover object-center"
                alt="Hero Image"
                // height={`1000px`}
              ></Image>
            </div>
          </section>
          <section className="p-10 m-4 flex flex-col">
            <div className="basis-10/12">
              <h2>Values</h2>
              <div className="basis-5/12">
                <p>
                  Investing in the markets goes beyond the personal gain. It
                  comes with responsibility and hence "Responsible Investing" is
                  the motto at Cumulus Capital Management. We favour investment
                  in assets having one or more of the following criteria, to
                  name just a few of them
                </p>
                <ul>
                  <li>
                    High Environmental, Social, and Governance (ESG) Score
                  </li>
                  <li>
                    Renewable and low-carbon energy Production, and raw material
                    involved
                  </li>
                  <li>General Sustainability</li>
                  <li>Vegan food production</li>
                  <li>Vertical Farming</li>
                  <li>Electric Mobility (mobility, charging stations, etc.)</li>
                </ul>
                <p>
                  By deduction, we won't invest in assets in the following
                  industries
                </p>
                <ul>
                  <li>Oil & Gas</li>
                  <li>Weapons and Firearms</li>
                </ul>
              </div>
            </div>
            <div className="flex flex-row m-4 basis-2/12 align-middle justify-center">
              <div className="mt-auto mr-1 mb-auto basis-2/12 align-middle justify-center">
                <Image
                  src={AboutImage2}
                  className="object-cover object-center"
                  alt="Hero Image"
                  // height={`1000px`}
                ></Image>
              </div>
              <div className="mt-auto mb-auto basis-2/12 align-middle justify-center">
                <Image
                  src={AboutImage3}
                  className="object-cover object-center"
                  alt="Hero Image"
                  // height={`1000px`}
                ></Image>
              </div>
            </div>
          </section>
          <section>
            <h2>Purpose</h2>
            <p>
              This website has been created by Daniel Demonceau, TechLead and
              founder of Fluffy Clouds Avenue Pty Ltd, to share his investment
              strategies with the community.
            </p>
          </section>{" "}
        </div>
      </div>
    </div>
  );
};

export default About;
