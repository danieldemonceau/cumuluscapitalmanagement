import { NextApiRequest, NextApiResponse } from "next";
import { setCookie } from "../../../utils/cookies";
import postgraphile from "../../../src/middleware/postgraphile";
import run from "../../../src/middleware/run";

// GraphQL route that handles queries
const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  res.statusCode = 200;
  await run(req, res, postgraphile);
  res.end();
};

export default handler;

export const config = {
  api: {
    bodyParser: false,
  },
};
