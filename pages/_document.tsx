import Document, {
  DocumentContext,
  Html,
  Head,
  Main,
  NextScript,
} from "next/document";

class MyDocument extends Document {
  render(): JSX.Element {
    return (
      <>
        <Html lang="en" className="scroll-smooth">
          <Head>
            {" "}
            <link
              href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond&display=swap"
              rel="stylesheet"
            />{" "}
            <link
              href="https://fonts.googleapis.com/css2?family=Oranienbaum&display=swap"
              rel="stylesheet"
            />
            <link
              href="https://fonts.googleapis.com/css2?family=Imbue:opsz@10..100&display=swap"
              rel="stylesheet"
            />
            <link
              href="https://fonts.googleapis.com/css2?family=IM+Fell+French+Canon+SC&display=swap"
              rel="stylesheet"
            />
            <link
              href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
              rel="stylesheet"
            />
            <link
              href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
              rel="stylesheet"
            />
          </Head>
          <body>
            <Main />
            <NextScript />
          </body>
        </Html>
      </>
    );
  }
}

export default MyDocument;
