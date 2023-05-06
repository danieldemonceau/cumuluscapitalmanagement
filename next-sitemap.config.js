/** @type {import('next-sitemap').IConfig} */
module.exports = {
  siteUrl: process.env.WEBSITE_URL || "https://cumuluscapitalmanagement.com",
  generateRobotsTxt: true,
  changefreq: "daily",
  robotsTxtOptions: {
    policies: [
      {
        userAgent: "*",
        allow: "/",
      },
    ],
  },
};
