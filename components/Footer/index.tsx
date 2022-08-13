import Ribbon from "./Ribbon";
import AcknowledgementOfCountry from "./AcknowledgementOfCountry";

const Footer = () => {
  return (
    <>
      <footer className="">
        <div className="text-white text-lg bg-slate-900">
          <AcknowledgementOfCountry />
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
          <Ribbon />
        </div>
      </footer>
    </>
  );
};

export default Footer;
