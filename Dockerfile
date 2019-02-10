FROM alpine

LABEL maintainer ="roberto.p.dedeus@gmail.com"

RUN apk add --update nodejs nodejs-npm

COPY . /src 

WORKDIR /src

RUN npm install 

EXPOSE 3000

ENTRYPOINT ["node", "./app.js"]
