FROM node:alpine
RUN apk update && apk add git python g++ make && rm -rf /var/cache/apk/*
RUN git clone https://github.com/mrvautin/adminMongo.git
WORKDIR adminMongo
RUN npm install
CMD ["npm","start"]
