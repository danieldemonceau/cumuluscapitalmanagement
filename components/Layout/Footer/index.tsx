import Ribbon from "./Ribbon";
import AcknowledgementOfCountry from "./AcknowledgementOfCountry";

const Footer = () => {
  return (
    <>
      <footer className="">
        <div className="text-white text-lg bg-slate-900">
          <AcknowledgementOfCountry />
          <Ribbon />
        </div>
      </footer>
    </>
  );
};

export default Footer;
