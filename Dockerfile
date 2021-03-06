FROM bakape/meguca
ENV GOPATH=/go
ENV PATH="${PATH}:/usr/local/go/bin:${GOPATH}/bin"
RUN mkdir -p /go/src/github.com/bakape/thumbnailer
WORKDIR /go/src/github.com/bakape/thumbnailer
COPY . .
RUN go get -v ./...
