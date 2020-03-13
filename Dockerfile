FROM golang:alpine as build

RUN apk add --no-cache git
RUN go get github.com/koron/maven-search

FROM alpine

COPY --from=build /go/bin/maven-search /usr/bin/maven-search

ENTRYPOINT ["maven-search"]
