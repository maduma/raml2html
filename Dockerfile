FROM node:12.18.1-alpine3.11

ARG RAML2HTML_VERSION

RUN npm install -g raml2html@$RAML2HTML_VERSION
