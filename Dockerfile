FROM node:22-alpine AS build
WORKDIR /app
RUN npm install -g @redocly/cli@latest
COPY src/openAPI.yaml ./src/openAPI.yaml
RUN redocly build-docs src/openAPI.yaml --output index.html
FROM node:22-alpine AS build
WORKDIR /app

