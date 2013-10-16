FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install --yes curl git
RUN curl https://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz > /tmp/go.tar.gz
RUN tar zxf /tmp/go.tar.gz -C /usr/share/
ENV PATH /usr/share/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV GOPATH /app
ENV GOROOT /usr/share/go
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN ./build
