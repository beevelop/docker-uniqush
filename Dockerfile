FROM beevelop/base

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV UNIQUSH_VERSION 2.6.1

WORKDIR /opt/uniqush

RUN apt-get -qq update && apt-get -qq install -y curl gettext && \
    curl -sLo uniqush.deb https://github.com/uniqush/uniqush-push/releases/download/${UNIQUSH_VERSION}/uniqush-push_${UNIQUSH_VERSION}_amd64.deb && \
    dpkg -i uniqush.deb && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get clean

EXPOSE 9898

COPY uniqush-push-source.conf ./
COPY entrypoint.sh ./
ENTRYPOINT /opt/uniqush/entrypoint.sh
