import meta from "../../data/meta";

const Footer = () => {
  const domainName = meta.domainName;
  return (
    <>
      <footer className="h-5 bottom-0 text-slate-200 text-xs text-right">
        <a href={`https://${domainName}`}>2022, Fluffy Clouds Avenue</a>
      </footer>
    </>
  );
};

export default Footer;
