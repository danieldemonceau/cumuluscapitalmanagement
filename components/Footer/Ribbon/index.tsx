import React from "react";
import meta from "../../../data/meta";
const domainName = meta.domainName;

const Ribbon = () => {
  return (
    <>
      <div className="flex flex-row p-5 justify-between text-xs bg-slate-800">
        {/* All Rights Reserved */}
        <div className="mr-auto text-left flex flex-col h-full align-middle justify-center">
          <a
            href={`https://${domainName}`}
            className="flex flex-col h-full align-middle justify-center"
          >
            ©2022, All Rights Reserved, Fluffy Clouds Avenue Pty Ltd
          </a>
        </div>
        <div className="flex flex-row justify-center space-x-2 text-right w-auto">
          <a
            href={`https://${domainName}`}
            className="justify-between basis-2/12"
          >
            Disclaimer
          </a>
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
    </>
  );
};

export default Ribbon;
