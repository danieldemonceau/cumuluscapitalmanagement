const ContactUs = () => {
  return (
    <>
      <section className="bg-slate-700 text-white p-16">
        <div className="flex flex-row space-x-10">
          <div className="ml-64 align-middle my-auto">
            <div className="text-4xl">Inspired?</div>
            <div>Please let us know!</div>
          </div>
          <div className=" align-middle my-auto">
            <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
              Contact Us!
            </button>
          </div>
        </div>
      </section>{" "}
    </>
  );
};

export default ContactUs;
