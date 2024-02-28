FROM golang:1.21.7-alpine3.19 as builder

WORKDIR /app

RUN go install github.com/99designs/gqlgen@latest
RUN go mod init go_graphql
RUN go get -u github.com/99designs/gqlgen
RUN gqlgen init

COPY . .
