import meta from "../../data/meta";

const Footer = () => {
  const domainName = meta.domainName;
  return (
    <>
      <footer className="">
        <div className="text-white text-lg bg-slate-900 pt-8">
          <div className="text-center xl:mx-96 lg:mx-36 md:mx-14 lg:text-base md:text-sm sm:text-sm">
            Cumulus Capital Management acknowledges the traditional owners of
            the land on which we stand, the Wurundjeri Woi Wurrung people, and
            pays respect to their Elders, past and present. Aboriginal and
            Torres Strait Islander people
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
          <div className="flex flex-row p-10 justify-between text-xs h-5 bottom-0 ">
            {/* All Rights Reserved */}
            <div className="mr-auto text-left">
              <a href={`https://${domainName}`} className="">
                ©2022, All Rights Reserved, Fluffy Clouds Avenue Pty Ltd
              </a>
            </div>
            <div className="flex flex-row justify-center space-x-2 text-right w-auto">
              <a
                href={`https://${domainName}`}
                className="justify-between basis-2/12"
              >
                Terms
              </a>
              <a
                href={`https://${domainName}`}
                className="justify-between basis-2/12"
              >
                Privacy
              </a>
              <a
                href={`https://${domainName}`}
                className="justify-between basis-6/12"
              >
                Site Credit
              </a>
            </div>
          </div>
        </div>
      </footer>
    </>
  );
};

export default Footer;
