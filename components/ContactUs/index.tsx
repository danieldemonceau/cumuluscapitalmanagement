import { FormEvent, useEffect, useState } from "react";
import ReCAPTCHA from "react-google-recaptcha";
// import axios from "axios";
import React from "react";
import * as z from "zod";

const ContactUs = ({ recaptchaSiteKey }: { recaptchaSiteKey: string }) => {
  const [name, setName] = useState("");
  const [isNameValid, setIsNameValid] = useState(false);
  const [email, setEmail] = useState("");
  const [isEmailValid, setIsEmailValid] = useState(false);
  const [isCaptchaValid, setIsCaptchaValid] = useState(false);
  const [message, setMessage] = useState("");
  const [disableButton, setDisableButton] = useState<boolean>(true);
  const [isMessageSent, setIsMessageSent] = useState<boolean>(false);

  const nameSchema = z.string().nonempty();
  const emailSchema = z.string().email().nonempty();

  const handleSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const res = await fetch("/api/sendgrid", {
      body: JSON.stringify({
        name,
        email,
        message: message,
        subject: `CCM: Contact Form Submission from ${name}`,
      }),
      headers: {
        "Content-Type": "application/json",
      },
      method: "POST",
    });

    const { error } = await res.json();
    if (error) {
      console.error(error);
      return;
    }
    setIsMessageSent(true);
  };

  const captchaElRef: React.RefObject<ReCAPTCHA> = React.createRef();

  const onCaptchaChange = (token: string | null) => {
    if (token && token !== "") {
      setIsCaptchaValid(true);
    }
    if (!(token && token !== "")) {
      setIsCaptchaValid(false);
    }
  };

  useEffect(() => {
    if (isMessageSent) {
      setDisableButton(true);
      setName(() => "");
      setEmail(() => "");
      setIsEmailValid(() => false);
      setIsCaptchaValid(false);
      setMessage(() => "");
      captchaElRef?.current?.reset();
    }
  }, [isMessageSent, captchaElRef]);

  useEffect(() => {
    try {
      nameSchema.parse(name);
      setIsNameValid(() => true);
    } catch (err: unknown) {
      // if (err instanceof Error) setError(err.message);
      setIsNameValid(() => false);
    }
  }, [name, nameSchema]);

  useEffect(() => {
    try {
      emailSchema.parse(email);
      setIsEmailValid(() => true);
    } catch (err: unknown) {
      // if (err instanceof Error) setError(err.message);
      setIsEmailValid(() => false);
    }
  }, [email, emailSchema]);

  useEffect(() => {
    if (isNameValid && isEmailValid && message !== "" && isCaptchaValid) {
      setDisableButton(() => false);
    }
    if (!isNameValid || !isEmailValid || message === "" || !isCaptchaValid) {
      setDisableButton(() => true);
    }
  }, [isNameValid, isEmailValid, message, isCaptchaValid, disableButton]);

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
            <form
              className="w-full max-w-lg align-middle justify-center mx-auto text-left"
              onSubmit={handleSubmit}
            >
              <div className="flex flex-wrap w-full mb-6 md:mb-0">
                <label
                  className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                  htmlFor="name"
                >
                  Your Name
                </label>
                <input
                  className={`appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white ${
                    isNameValid ? "border-red-500" : ""
                  }`}
                  id="name"
                  type="text"
                  placeholder="Jane Doe"
                  value={name}
                  name="name"
                  autoComplete="name"
                  required
                  onChange={(e) => setName(() => e.target.value)}
                />
              </div>
              <div className="flex flex-wrap -mx-3 mb-6">
                <div className="w-full px-3">
                  <label
                    className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                    htmlFor="email"
                  >
                    E-mail
                  </label>
                  <input
                    className={`appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" ${
                      isEmailValid ? "" : "border-red-500"
                    }`}
                    id="email"
                    type="email"
                    placeholder="Jane.Doe@email.com"
                    value={email}
                    name="email"
                    autoComplete="email"
                    required
                    onChange={(e) => setEmail(() => e.target.value)}
                  />
                </div>
              </div>
              <div className="flex flex-wrap -mx-3 mb-6">
                <div className="w-full px-3">
                  <label
                    className="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                    htmlFor="message"
                  >
                    Message
                  </label>
                  <textarea
                    className={`no-resize appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500 h-48 resize-none ${
                      message === "" ? "border-red-500" : ""
                    }`}
                    id="message"
                    value={message}
                    name="message"
                    required
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
                    type="submit"
                    disabled={disableButton}
                  >
                    Send
                  </button>
                </div>
                <div className="md:w-2/3"></div>
              </div>
            </form>
          )}
        </div>
      </div>
      <div className="basis-1/12"></div>
    </div>
  );
};

export default ContactUs;
