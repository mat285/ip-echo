FROM golang:1-alpine

RUN apk --no-cache add ca-certificates

WORKDIR "/go/src/github.com/mat285/echo"

ADD main.go /go/src/github.com/mat285/echo/main.go
ADD vendor /go/src/github.com/mat285/echo/vendor
RUN go install github.com/mat285/echo

ENTRYPOINT /go/bin/echo
