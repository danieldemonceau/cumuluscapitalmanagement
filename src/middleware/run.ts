import { NextApiRequest, NextApiResponse } from "next";
import { HttpRequestHandler } from "postgraphile";

const run = async (
  req: NextApiRequest,
  res: NextApiResponse,
  fn: any
): Promise<HttpRequestHandler> => {
  return new Promise((resolve, reject) => {
    fn(req, res, (result: any) => {
      if (result instanceof Error) {
        return reject(result);
      }
      return resolve(result);
    });
  });
};

export default run;
