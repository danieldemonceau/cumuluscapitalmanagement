import Link from "next/link";

const ContactUs = () => {
  return (
    <>
      <section className="bg-slate-700 text-white p-16">
        <div className="flex flex-row space-x-10">
          <div className="align-middle my-auto float-left">
            <div className="text-4xl">Inspired?</div>
            <div>Please let us know!</div>
          </div>
          <div className=" align-middle my-auto">
            <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
              <Link href="/contactus">Contact Us!</Link>
            </button>
          </div>
        </div>
      </section>{" "}
    </>
  );
};

export default ContactUs;
