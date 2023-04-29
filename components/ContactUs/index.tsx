import { useEffect, useState } from "react";
import validator from "validator";
import ReCAPTCHA from "react-google-recaptcha";
// import axios from "axios";
import React from "react";

const ContactUs = ({ recaptchaSiteKey }: { recaptchaSiteKey: string }) => {
  const [name, setName] = useState("");
  const [emailAddress, setEmailAddress] = useState("");
  const [isEmailAddressValid, setIsEmailAddressValid] = useState(false);
  const [isCaptchaValid, setIsCaptchaValid] = useState(false);
  const [message, setMessage] = useState("");
  const [disableButton, setDisableButton] = useState<boolean>(true);
  // const [isMessageSent, setIsMessageSent] = useState<boolean>(false);
  const [isMessageSent] = useState<boolean>(false);

  const sendForm = async () => {
    // const postComment = await axios({
    //   baseURL: ``,
    //   url: `/api/graphql`,
    //   method: "post",
    //   headers: {
    //     "content-type": "application/json",
    //   },
    //   data: { query: CREATE_COMMENTS(emailAddress, message, name) },
    // });
    // if (postComment.data.data.createComment.comment.id) setIsMessageSent(true);
  };

  const captchaElRef: React.RefObject<ReCAPTCHA> = React.createRef();

  const onCaptchaChange = (token: string | null) => {
    if (token && token !== "") {
      setIsCaptchaValid(true);
    }
  };

  useEffect(() => {
    if (isMessageSent) {
      setDisableButton(true);
      setName(() => "");
      setEmailAddress(() => "");
      setIsEmailAddressValid(() => false);
      setIsCaptchaValid(false);
      setMessage(() => "");
      captchaElRef?.current?.reset();
    }
  }, [isMessageSent, captchaElRef]);

  useEffect(() => {
    validator.isEmail(emailAddress)
      ? setIsEmailAddressValid(true)
      : setIsEmailAddressValid(false);
  }, [emailAddress]);

  useEffect(() => {
    if (
      name !== "" &&
      emailAddress !== "" &&
      message !== "" &&
      isCaptchaValid
    ) {
      setDisableButton(() => false);
    }
    if (
      name === "" ||
      emailAddress === "" ||
      message === "" ||
      !isCaptchaValid
    ) {
      setDisableButton(() => true);
    }
  }, [name, emailAddress, message, isCaptchaValid, disableButton]);

  return (
    <div className="flex flex-row my-5 font-openSans">
      <div className="basis-1/12"></div>
      <div className="flex flex-col basis-10/12">
        <h1>Contact Us</h1>
        <div className="flex flex-col align-middle justify-center text-center">
          {isMessageSent ? (
            <div className="flex flex-col">
              <h2>Thank you for your message!</h2>
              <p>We will contact you back shortly</p>
            </div>
          ) : (
            ""
          )}
          <form className="w-full max-w-lg align-middle justify-center mx-auto text-left">
            <div className="flex flex-wrap w-full mb-6 md:mb-0">
              <label
                className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                htmlFor="grid-first-name"
              >
                Your Name
              </label>
              <input
                className={`appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white ${
                  name === "" ? "border-red-500" : ""
                }`}
                id="grid-first-name"
                type="text"
                placeholder="Jane"
                value={name}
                onChange={(e) => setName(() => e.target.value)}
              />
            </div>
            <div className="flex flex-wrap -mx-3 mb-6">
              <div className="w-full px-3">
                <label
                  className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                  htmlFor="grid-password"
                >
                  E-mail
                </label>
                <input
                  className={`appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" ${
                    isEmailAddressValid ? "" : "border-red-500"
                  }`}
                  id="email"
                  type="email"
                  value={emailAddress}
                  onChange={(e) => setEmailAddress(() => e.target.value)}
                />
              </div>
            </div>
            <div className="flex flex-wrap -mx-3 mb-6">
              <div className="w-full px-3">
                <label
                  className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                  htmlFor="grid-password"
                >
                  Message
                </label>
                <textarea
                  className={`no-resize appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500 h-48 resize-none ${
                    message === "" ? "border-red-500" : ""
                  }`}
                  id="message"
                  value={message}
                  onChange={(e) => setMessage(() => e.target.value)}
                ></textarea>
              </div>
            </div>
            <ReCAPTCHA
              // ref={(r) => setCaptcha(r)}
              ref={captchaElRef}
              sitekey={recaptchaSiteKey}
              onChange={onCaptchaChange}
            />

            <div className="md:flex md:items-center">
              <div className="md:w-1/3">
                <button
                  className="shadow bg-teal-400 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded disabled:opacity-25"
                  type="button"
                  value={message}
                  disabled={disableButton}
                  onClick={sendForm}
                >
                  Send
                </button>
              </div>
              <div className="md:w-2/3"></div>
            </div>
          </form>
        </div>
      </div>
      <div className="basis-1/12"></div>
    </div>
  );
};

export default ContactUs;
