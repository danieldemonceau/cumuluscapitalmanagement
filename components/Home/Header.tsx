import heroImage from "./hero.jpg";
import Image from "next/image";

const Header = () => {
  return (
    <>
      <header className="bg-black text-gray-300">
        <Image
          className="h-4/5 object-cover object-top"
          src={heroImage}
          alt="Hero Image"
          layout="responsive"
          height={`2100px`}
        />
      </header>
    </>
  );
};

export default Header;
