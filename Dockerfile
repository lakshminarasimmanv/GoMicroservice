FROM golang:1.18.8-alpine3.16

WORKDIR /app

COPY go.mod go.sum .

RUN go mod download

COPY *.go .

RUN go build -o /microservice

EXPOSE 8000

CMD ["/microservice"]

