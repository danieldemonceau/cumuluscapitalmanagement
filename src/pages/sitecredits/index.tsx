import { NextSeo } from "next-seo";
import SEO from "../../../next-seo.config";
import meta from "@/src/data/meta";

const Index = () => {
  return (
    <>
      <NextSeo
        {...{
          ...SEO,
          title: "Credits",
        }}
      />
      <div>
        <div className="font-openSans">
          <div className="flex flex-row my-5">
            <div className="basis-1/12"></div>
            <div className="flex flex-col basis-10/12">
              <h1>Credits</h1>
              <ul>
                <li>
                  Created by {meta.authorFull} {meta.authorCompanyACN}
                </li>
                <li>Powered by Next.js</li>
                <li>Typescript</li>
                <li>Tailwind</li>
                <li>tRPC</li>
                <li>prisma</li>
                <li>PostgreSQL</li>
                <li>Axios</li>
                <li>Fontawesome</li>
                <li>HeroIcons</li>
                <li>react-table</li>
                <li></li>
                <li>
                  <div className="text-sm">
                    <a
                      target="_blank"
                      href="https://icons8.com/icon/OFU5h8HeWK3z/clouds"
                      rel="noreferrer"
                    >
                      Clouds
                    </a>{" "}
                    icon by{" "}
                    <a
                      target="_blank"
                      href="https://icons8.com"
                      rel="noreferrer"
                    >
                      Icons8
                    </a>
                  </div>
                </li>
                <li>
                  Most pictures are made with{" "}
                  <a
                    href="https://dream.ai/"
                    target={`_blank`}
                    rel={`noreferrer`}
                  >
                    dream.ai
                  </a>
                </li>
              </ul>
              {/* Credits */}
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export const getServerSideProps = async () => {
  return { props: {} };
};

export default Index;
