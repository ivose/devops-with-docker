FROM ubuntu
EXPOSE 5000
WORKDIR /usr/src/app


RUN apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && apt-get install -y nodejs

COPY ./example-frontend .

RUN npm install

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL}

RUN npm run build && npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
