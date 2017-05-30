FROM golang:1.8.1

MAINTAINER apalahitunamanya2 "zainul.ma@tnis.com"

ENV GOPATH /go

ENV PATH $GOPATH/bin:$PATH

RUN mkdir -p /go/src/blog

ADD . /go/src/blog

RUN go get github.com/Masterminds/glide

RUN go get github.com/beego/bee

RUN go build -o /go/src/blog/blog /go/src/blog/main.go

RUN chmod 755 /go/src/blog/blog

WORKDIR /go/src

EXPOSE 8080

CMD ["/go/src/blog/blog"]
