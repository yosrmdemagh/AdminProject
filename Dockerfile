FROM node:alpine AS build
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY webpack.config.js .
COPY SourceCode SourceCode
RUN npm run build
FROM node:alpine
WORKDIR '/app'
COPY --from=build /app/build /app/build
EXPOSE 8080
CMD ["node","/app/build/index.js"]
