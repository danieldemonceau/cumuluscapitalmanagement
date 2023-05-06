import meta from "./meta";

export const structuredData = {
  "@context": "https://schema.org",
  "@type": `${meta.companyIndustry}`,
  name: `${meta.websiteNameLong}`,
  address: meta.address,
  review: {
    "@type": "Review",
    reviewRating: {
      "@type": "Rating",
      ratingValue: "4",
      bestRating: "5",
    },
    author: {
      "@type": "Person",
      name: "Emily Cavalcanti Almeida",
    },
  },
  geo: meta.geo,
  url: meta.companyUrl,
  telephone: meta.contactPoint.telephone,
  openingHoursSpecification: [
    {
      "@type": "OpeningHoursSpecification",
      dayOfWeek: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      opens: "09:00",
      closes: "17:00",
    },
  ],
  menu: "https://www.example.com/menu",
  acceptsReservations: "True",
};
