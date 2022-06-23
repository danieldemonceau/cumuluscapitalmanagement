import Link from "next/link";
import HorizontalBar from "./HorizontalBar";

const Navbar = () => {
  return (
    <>
      <section className="z-50 absolute pt-6 left-0 right-0 m-auto">
        <HorizontalBar />
        <div className="flex justify-center items-center">
          <nav className="text-slate-300 h-auto">
            <ul className="flex flex-row space-x-12">
              <li className="hover:text-slate-600">
                <Link href="/">Home</Link>
              </li>
              <li className="hover:text-slate-600">
                <Link href="/portfolio">Portfolio</Link>
              </li>
              <li className="hover:text-slate-600">
                <Link href="/methodology">Methodology</Link>
              </li>
              <li className="hover:text-slate-600">
                <Link href="/about">About</Link>
              </li>
            </ul>
          </nav>
          <hr />
        </div>
        <HorizontalBar />
      </section>
    </>
  );
};

export default Navbar;
