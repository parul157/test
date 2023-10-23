FROM ubuntu:latest


RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      git \
      wget \
      curl \
      openssl \
      libpq-dev \
      libcurl4-gnutls-dev \
      libxml2-dev \
      libssl-dev \
      zlib1g-dev \
      unixodbc-dev \
      jq


COPY packages.R .
RUN Rscript packages.R
