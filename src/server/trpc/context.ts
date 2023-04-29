// @/src/server/context.ts
import * as trpc from "@trpc/server";
// import * as trpcNext from "@trpc/server/adapters/next";
import { PrismaClient } from "@prisma/client";

export const createContext = async () =>
  // opts?: trpcNext.CreateNextContextOptions
  {
    const prisma = new PrismaClient({ log: ["query"] });
    return { prisma };
  };

export type Context = trpc.inferAsyncReturnType<typeof createContext>;
