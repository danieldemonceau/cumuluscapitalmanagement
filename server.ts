// server.js
import { createServer } from "http";
import { parse } from "url";
import next from "next";

const dev = process.env.NODE_ENV !== "production";
const hostname = "localhost";
const port = 3000;
// when using middleware `hostname` and `port` must be provided below
const app = next({ dev, hostname, port });
const handle = app.getRequestHandler();

app.prepare().then(() => {
  createServer(async (req, res) => {
    try {
      // Be sure to pass `true` as the second argument to `url.parse`.
      // This tells it to parse the query portion of the URL.
      const parsedUrl = parse(req.url ?? "", true);
      const { pathname, query } = parsedUrl;

      if (pathname === "/a") {
        await app.render(req, res, "/a", query);
      } else if (pathname === "/b") {
        await app.render(req, res, "/b", query);
      } else {
        await handle(req, res, parsedUrl);
      }
    } catch (err) {
      console.error("Error occurred handling", req.url, err);
      res.statusCode = 500;
      res.end("internal server error");
    }
  }).listen(port, () => {
    console.log(`> Ready on http://${hostname}:${port}`);
  });
});

// import express, { Request, Response } from "express";
// import next from "next";

// const dev = process.env.NODE_ENV !== "production";
// const app = next({ dev });
// const handle = app.getRequestHandler();
// const port = process.env.PORT || 3000;

// (async () => {
//   try {
//     await app.prepare();
//     const server = express();
//     server.all("*", (req: Request, res: Response) => {
//       return handle(req, res);
//     });
//     server.listen(port, (err?: any) => {
//       if (err) throw err;
//       console.log(`> Ready on localhost:${port} - env ${process.env.NODE_ENV}`);
//     });
//   } catch (e) {
//     console.error(e);
//     process.exit(1);
//   }
// })();
