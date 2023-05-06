export const NEXT_PUBLIC_GA_MEASUREMENT_ID =
  process.env.NEXT_PUBLIC_GA_MEASUREMENT_ID ?? "";

export const pageview = (url: URL) => {
  window.gtag("config", NEXT_PUBLIC_GA_MEASUREMENT_ID, {
    page_path: url,
  });
};

export const event = (
  action: Gtag.EventNames,
  { event_category, event_label, value }: Gtag.EventParams
) => {
  window.gtag("event", action, {
    event_category,
    event_label,
    value,
  });
};
