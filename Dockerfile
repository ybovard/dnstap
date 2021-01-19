FROM golang:1.14.7-alpine3.12

RUN apk update && apk upgrade && apk add git

RUN go get -u github.com/dnstap/golang-dnstap/dnstap && adduser -D --uid=1000 --home=/home/dnstap dnstap

USER 1000

ENTRYPOINT [ "/go/bin/dnstap" ]
CMD [ "-h" ]
