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
CMD [ "node", "--run", "dev" ]
