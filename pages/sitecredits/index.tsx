const Index = () => {
  return (
    <div>
      <div className="font-openSans">
        <div className="flex flex-row my-5">
          <div className="basis-1/12"></div>
          <div className="flex flex-col basis-10/12">
            <h1>Credits</h1>
            <ul>
              <li>
                Created by Daniel Demonceau, Fluffy Clouds Avenue Pty Ltd ACN
                658 245 857
              </li>
              <li>Powered by Next.js</li>
              <li>Typescript</li>
              <li>Tailwind</li>
              <li>GraphQL</li>
              <li>PostgreSQL</li>
              <li>Axios</li>
              <li>Fontawesome</li>
              <li>HeroIcons</li>
              <li>react-table</li>
              <li></li>
              <li>
                <div className="text-sm">
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
              </li>
              <li>
                Most pictures are made with{" "}
                <a
                  href="https://dream.ai/"
                  target={`_blank`}
                  rel={`noreferrer`}
                >
                  dream.ai
                </a>
              </li>
            </ul>
            {/* Credits */}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Index;
