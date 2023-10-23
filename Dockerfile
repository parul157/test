FROM rocker/ml:4.0.0
  
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      git \
      openssl \
      libpq-dev \
      libcurl4-gnutls-dev \
      libxml2-dev \
      libssl-dev \
      zlib1g-dev \
      unixodbc-dev \
      wget \
      curl \
      jq \
      postgresql \
      postgresql-contrib

RUN curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.7.4.zip" -o "awscliv2.zip" \
    && unzip -q awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip

RUN install2.r RPostgreSQL

COPY packages.R .
RUN Rscript packages.R
