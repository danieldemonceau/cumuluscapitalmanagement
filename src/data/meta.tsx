const authorName = "Daniel Demonceau";
const authorRole = "Founder & Tech Lead";
const authorEmail = "daniel.demonceau@cumuluscapitalmanagement.com";
const authorCompany = "Fluffy Clouds Avenue Pty Ltd";
const authorCompanyACN = "ACN 658 245 857";
const authorFull = `${authorName}, ${authorRole}, ${authorCompany}`;
const authorCompanyUrl = "FluffyCloudsAvenue.com";
const authorWebsiteUrl = "daniel.fashion";
const domainName = "cumuluscapitalmanagement.com";
const websiteNameShort = "Cumulus Capital Management - Long-term Investments";
const websiteNameLong = "Cumulus Capital Management";
const companyName = "Cumulus Capital Management";
const companyUrl = "cumuluscapitalmanagement.com";
const companyIndustry = "Capital Management Firm";

const address = {
  "@type": "PostalAddress",
  streetAddress: "88/3 Albert Coates Lane, Melbourne, VIC 3000",
  addressLocality: "Melbourne",
  addressRegion: "VIC",
  postalCode: "3000",
  addressCountryLong: "Australia",
  addressCountryShort: "AU",
};
const geo = {
  "@type": "GeoCoordinates",
  latitude: -37.81101,
  longitude: 144.96524,
};
const contactPoint = {
  "@type": "ContactPoint",
  telephone: "1300 848 568",
  contactType: "customer service",
};

const meta = {
  authorName,
  authorFull,
  authorCompany,
  authorCompanyACN,
  authorRole,
  authorEmail,
  domainName,
  websiteNameShort,
  websiteNameLong,
  keywords: `${authorFull}, ${authorCompanyUrl}, ${authorWebsiteUrl}, Investment, Investing, Capital, Wealth, Funds, Melbourne, Australia, Magic Fomula, Acquirer's Multiple, ${domainName}, FInance`,
  address,
  geo,
  contactPoint,
  companyName,
  companyUrl,
  companyIndustry,
};

export default meta;
