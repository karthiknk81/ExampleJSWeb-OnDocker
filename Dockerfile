FROM alpine 

LABEL key="karthiknk81.edu@outlook.com"

RUN apk add --update nodejs npm

COPY . /src

WORKDIR /src

RUN npm install 

EXPOSE 8080

ENTRYPOINT [ "node","./server.js"]
