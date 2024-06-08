FROM node:22-alpine

RUN npm i -g esy esy-package
RUN apk add linux-headers curl git perl-utils bash gcc g++ musl-dev make m4 patch
ENV DEBUG bale*
WORKDIR /app
COPY esy.json esy.json
COPY esy-test esy-test
RUN esy-package
