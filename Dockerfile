FROM node:22-alpine3.22 AS base

ENV DIR /app
WORKDIR $DIR
ARG NPM_TOKEN

FROM base AS dev

ENV NODE_ENV=develop

RUN npm install -g pnpm@10.15.0
COPY package.json pnpm-lock.yaml ./

RUN echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > ".npmrc" && \
  pnpm install --frozen-lockfile && \
  rm -f .npmrc

COPY tsconfig*.json .
COPY .swcrc .
COPY nest-cli.json .
COPY src src

EXPOSE $PORT
EXPOSE 9229
CMD [ "node", "--run", "dev" ]


FROM base AS build

ENV NODE_ENV=build

RUN npm install -g pnpm@10.15.0
COPY package.json pnpm-lock.yaml ./

RUN echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > ".npmrc" && \
  pnpm install --frozen-lockfile && \
  rm -f .npmrc

COPY tsconfig*.json .
COPY .swcrc .
COPY nest-cli.json .
COPY src src

RUN pnpm run build
RUN pnpm prune --prod

FROM base AS prod

ENV NODE_ENV=production

COPY --from=build $DIR/package.json ./
COPY --from=build $DIR/pnpm-lock.yaml ./
COPY --from=build $DIR/node_modules ./node_modules
COPY --from=build $DIR/dist ./dist

EXPOSE 3000
CMD [ "node", "dist/main.js" ]