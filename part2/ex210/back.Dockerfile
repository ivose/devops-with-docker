FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./example-backend .

RUN go build

ARG REQUEST_ORIGIN
ENV REQUEST_ORIGIN=${REQUEST_ORIGIN}

CMD ["./server"]