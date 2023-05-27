FROM node:18.12.1-alpine

EXPOSE 3001

RUN apk update

RUN apk add git

RUN git clone https://github.com/ivose/simplenodeproj

WORKDIR /simplenodeproj

RUN npm install

CMD ["npm", "start"]