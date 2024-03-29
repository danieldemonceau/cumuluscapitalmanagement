import { Fragment, useEffect, useRef, useState } from "react";
import { Dialog, Transition } from "@headlessui/react";
import { ExclamationIcon } from "components/common/heroicons";
import { hasCookie, setCookie } from "cookies-next";

const NoFinancialAdviceDisclaimer = () => {
  const [open, setOpen] = useState(false);
  const understoodButtonRef = useRef(null);

  // Expires in 100 days
  const COOKIE_TOS_EXPIRY_DATE_OFFSET = 100;
  const cookieTosExpiryDate = new Date();
  cookieTosExpiryDate.setDate(
    cookieTosExpiryDate.getDate() + COOKIE_TOS_EXPIRY_DATE_OFFSET
  );

  useEffect(() => {
    if (!hasCookie("hasAcceptedFinancialAdviceDisclaimer")) {
      setOpen(true);
    }
  }, []);

  const acceptFinancialAdviceDisclaimer = () => {
    setCookie("hasAcceptedFinancialAdviceDisclaimer", true, {
      expires: cookieTosExpiryDate,
    });
    setOpen(false);
  };

  return (
    <Transition.Root show={open} as={Fragment}>
      <Dialog
        as="div"
        className="relative z-10"
        initialFocus={understoodButtonRef}
        onClose={setOpen}
      >
        <Transition.Child
          as={Fragment}
          enter="ease-out duration-300"
          enterFrom="opacity-0"
          enterTo="opacity-100"
          leave="ease-in duration-200"
          leaveFrom="opacity-100"
          leaveTo="opacity-0"
        >
          <div className="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
        </Transition.Child>

        <div className="fixed z-10 inset-0 overflow-y-auto">
          <div className="flex items-end sm:items-center justify-center min-h-full p-4 text-center sm:p-0">
            <Transition.Child
              as={Fragment}
              enter="ease-out duration-300"
              enterFrom="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
              enterTo="opacity-100 translate-y-0 sm:scale-100"
              leave="ease-in duration-200"
              leaveFrom="opacity-100 translate-y-0 sm:scale-100"
              leaveTo="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
            >
              <Dialog.Panel className="relative bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:max-w-lg sm:w-full">
                <div className="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                  <div className="mx-auto flex items-center justify-center rounded-full bg-red-100 mb-2 sm:h-10 sm:w-10 h-6 w-6 text-red-600">
                    <ExclamationIcon />
                  </div>
                  <div className="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                    <Dialog.Title
                      as="h3"
                      className="text-lg leading-6 font-medium text-gray-900 text-center"
                    >
                      Important Acknowledgement!
                    </Dialog.Title>
                    <div className="mt-2 text-sm text-gray-500">
                      <p className="my-2 text-base">
                        All the information on this Website is for General
                        Information Only. This Website is a Concept Website
                        operated by{" "}
                        <a
                          href="https://fluffyclouds.com.au"
                          target={"_blank"}
                          rel={`noreferrer`}
                        >
                          Fluffy Clouds Avenue Pty Ltd
                        </a>
                      </p>
                      <p className="my-2 text-base">
                        We are not Financial Advisers, and you should consider
                        seeking independent professional financial advice to
                        check how this Website's information relates to your
                        unique circumstances.
                      </p>
                      <p className="my-2 text-base">
                        We are not liable for any loss caused due to negligence
                        or otherwise arising from the use of, or reliance on,
                        the information provided directly or indirectly by use
                        of this Website
                      </p>
                    </div>
                  </div>
                </div>
                <div className="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse justify-center w-full">
                  <button
                    type="button"
                    className="w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-blue-700 text-base font-medium text-white hover:bg-blue-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 sm:ml-3 sm:text-sm"
                    onClick={acceptFinancialAdviceDisclaimer}
                    ref={understoodButtonRef}
                  >
                    I Understand
                  </button>
                </div>
              </Dialog.Panel>
            </Transition.Child>
          </div>
        </div>
      </Dialog>
    </Transition.Root>
  );
};

export default NoFinancialAdviceDisclaimer;
