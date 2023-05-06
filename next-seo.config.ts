import meta from "./src/data/meta";

const domainName = meta.domainName;
const websiteNameShort = meta.websiteNameShort;

const config = {
  titleTemplate: `${websiteNameShort} | %s`,
  title: ``,
  defaultTitle: `${websiteNameShort}`,
  noindex: false,
  nofollow: false,
  additionRobotsProps: {
    nosnippet: true,
    notranslate: true,
    noimageindex: true,
    noarchive: true,
    maxSnippet: -1,
    maxImagePreview: "none",
    maxVideoPreview: -1,
  },
  disableGooglebot: false,
  description: `Investment Strategy of Cumulus Capital Investment`,
  canonical: `https://${domainName}/`,
  // additionalLinkTags: "",
  twitter: {
    cardType: "",
    site: "",
    handle: "daniel.demonceau",
  },
  facebook: {
    appId: "",
  },
  openGraph: {
    url: `${domainName}`,
    type: "website",
    title: `${domainName}`,
    description: `Website for the investment company Cumulus Capital Management`,
    locale: "en_AU",
    site_name: `${domainName}`,
    profile: {
      firstName: "Daniel",
      lastName: "Demonceau",
      username: "daniel.demonceau",
      gender: "M",
    },
  },
};

export default config;
