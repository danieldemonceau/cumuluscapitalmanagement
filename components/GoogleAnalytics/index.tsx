import { NEXT_PUBLIC_GA_MEASUREMENT_ID } from "@/src/lib/gtag";
import Script from "next/script";

const GoogleAnalytics = () => {
  return (
    <>
      <Script
        strategy={`afterInteractive`}
        src={`https://www.googletagmanager.com/gtag/js?id=${NEXT_PUBLIC_GA_MEASUREMENT_ID}`}
      />
      <Script
        id="google-analytics"
        strategy="afterInteractive"
        dangerouslySetInnerHTML={{
          __html: `
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', '${NEXT_PUBLIC_GA_MEASUREMENT_ID}', {
            page_path: window.location.pathname,
            });
          `,
        }}
      />
    </>
  );
};

export default GoogleAnalytics;
