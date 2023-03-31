FROM ubuntu:20.04

RUN apt update && apt install -y curl

WORKDIR /usr/src/app

COPY readurl.sh .

RUN chmod +x readurl.sh

CMD ./readurl.sh
