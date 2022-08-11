import Link from "next/link";
import HorizontalBar from "./HorizontalBar";

const Navbar = () => {
  return (
    <>
      <nav className="z-50 py-6 left-0 right-0 m-auto my-auto scroll-smooth">
        <div className="flex justify-center items-center">
          <nav className="text-black h-auto">
            <ul className="flex flex-row space-x-12">
              <li className="uppercase hover:text-green-50">
                <Link href="/">Home</Link>
              </li>
              <li className="uppercase hover:text-green-50">
                <Link href="#portfolio" className="">
                  Portfolio
                </Link>
              </li>
              <li className="uppercase hover:text-green-50">
                <Link href="/strategies">Strategies</Link>
              </li>
              <li className="uppercase hover:text-green-50">
                <Link href="/about">About</Link>
              </li>
              <li>|</li>
              <li className="text-sm my-auto">Investors</li>
              <li className="text-sm my-auto">Contact Us</li>
            </ul>
          </nav>
          <hr />
        </div>
      </nav>
    </>
  );
};

export default Navbar;
