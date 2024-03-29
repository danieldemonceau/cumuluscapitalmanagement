import * as Sentry from "@sentry/nextjs";

Sentry.init({
  dsn: `https://4be81098f52e4fbc8f3b896e126cfc6b@o4505153598455808.ingest.sentry.io/4505153606516736`,
  // Set tracesSampleRate to 1.0 to capture 100%
  // of transactions for performance monitoring.
  // We recommend adjusting this value in production
  tracesSampleRate: 1.0,

  // ...

  // Note: if you want to override the automatic release value, do not set a
  // `release` value here - use the environment variable `SENTRY_RELEASE`, so
  // that it will also get attached to your source maps
});
