import Head from "next/head";
import meta from "@/src/data/meta";

const Meta = ({ keywords, author }: any) => {
  return (
    <Head>
      <meta charSet="UTF-8" />
      <meta name="keywords" content={keywords} />
      <meta name="author" content={author} />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="icon" href="/favicon.ico" />
    </Head>
  );
};

const author = meta.author;
const keywords = meta.keywords;

Meta.defaultProps = {
  keywords,
  author,
};

export default Meta;
