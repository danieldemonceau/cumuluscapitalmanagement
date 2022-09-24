import meta from "./src/data/meta";

const author = meta.author;
const domainName = meta.domainName;
const websiteNameShort = meta.websiteNameShort;

const config = {
  titleTemplate: `${websiteNameShort} | %s`,
  title: `${websiteNameShort} | %s`,
  defaultTitle: `${websiteNameShort} | %s`,
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
    description: `Personal Branding Website of ${author}`,
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
