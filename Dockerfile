FROM golang:1.18.8-alpine3.16 AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

RUN go build -o go-microservice .

FROM alpine:latest

WORKDIR /

COPY --from=builder /app/go-microservice ./

EXPOSE 8000

CMD ["./go-microservice"]
