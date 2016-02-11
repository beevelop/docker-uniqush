FROM beevelop/base

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV UNIQUSH_VERSION 1.5.2

WORKDIR /opt/uniqush

COPY uniqush-push.conf ./

RUN apt-get -qq update && apt-get -qq install -y curl && \
    curl -sLo uniqush-push.deb https://uniqush.org/downloads/uniqush-push_${UNIQUSH_VERSION}_amd64.deb && \
    dpkg -i uniqush-push.deb

EXPOSE 9898

CMD uniqush-push -config /opt/uniqush/uniqush-push.conf
