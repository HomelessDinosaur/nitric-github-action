import { api, bucket } from "@nitric/sdk";

const helloApi = api("main", {});

const b = bucket("bucket-name").for("writing");

helloApi.get("/hello/:name", async (ctx) => {
  const { name } = ctx.req.params;

  ctx.res.body = `Hello ${name}`;

  return ctx;
});
