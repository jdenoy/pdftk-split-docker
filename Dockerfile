FROM ubuntu:latest
MAINTAINER Johan Denoyer <johan@johandenoyer.fr>

RUN apt-get update
RUN apt-get -y install pdftk


VOLUME /tmp
WORKDIR /tmp

COPY start-pdftk.sh /usr/local/bin/start-pdftk.sh
ENTRYPOINT ["/usr/local/bin/start-pdftk.sh"]
