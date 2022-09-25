const Disclaimer = () => {
  return (
    <>
      <div className="font-openSans">
        <div className="flex flex-row my-5">
          <div className="basis-1/12"></div>
          <div className="flex flex-col basis-10/12">
            <h1>Disclaimer Policy</h1>
            <section className="p-10 m-4 flex flex-row">
              <div className="mt-2 text-sm text-gray-500">
                <p className="my-2 text-base">
                  All the information on this Website is for General Information
                  Only. This Website is a Concept Website operated by{" "}
                  <a
                    href="https://fluffyclouds.com.au"
                    target={"_blank"}
                    rel={`noreferrer`}
                  >
                    Fluffy Clouds Avenue Pty Ltd.
                  </a>
                </p>
                <p className="my-2 text-base">
                  We are not Financial Advisers, and you should consider seeking
                  independent professional financial advice to check how this
                  Website's information relates to your unique circumstances.
                </p>
                <p className="my-2 text-base">
                  We are not liable for any loss caused due to negligence or
                  otherwise arising from the use of, or reliance on, the
                  information provided directly or indirectly by use of this
                  Website.
                </p>
              </div>
            </section>
          </div>
        </div>
      </div>
    </>
  );
};

export default Disclaimer;
