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

RUN curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.7.4.zip" -o "awscliv2.zip" \
    && unzip -q awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip

COPY packages.R .
RUN Rscript packages.R
