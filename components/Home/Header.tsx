import heroImage from "./hero.png";
import Image from "next/image";

const Header = () => {
  return (
    <>
      <header className="bg-black text-gray-300">
        <Image className="z-0" src={heroImage} alt="Hero Image" />
      </header>
    </>
  );
};

export default Header;
