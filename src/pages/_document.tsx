import Document, {
  // DocumentContext,
  Html,
  Head,
  Main,
  NextScript,
} from "next/document";
import { NEXT_PUBLIC_GA_MEASUREMENT_ID } from "@/lib/gtag";
// import Script from "next/script";

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
            />{" "}
            <meta charSet="utf-8" />
            <script
              async
              src={`https://www.googletagmanager.com/gtag/js?id=${NEXT_PUBLIC_GA_MEASUREMENT_ID}`}
            />
            <script
              dangerouslySetInnerHTML={{
                __html: `window.dataLayer = window.dataLayer || [];
                    function gtag(){dataLayer.push(arguments);}
                    gtag('js', new Date());
                    gtag('config', '${NEXT_PUBLIC_GA_MEASUREMENT_ID}', {
                        page: window.location.pathname
                    });`,
              }}
            />
            {/* <Script
              async
              src={`https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=${process.env.NEXT_PUBLIC_GOOGLE_ADS_CLIENT_ID}`}
              strategy="lazyOnload"
              crossOrigin="anonymous"
            /> */}
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
