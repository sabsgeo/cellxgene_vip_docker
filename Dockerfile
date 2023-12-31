FROM ubuntu:bionic

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \
    apt-get install -y build-essential libxml2-dev build-essential openssl git wget libssl-dev python3-dev python3-pip zlib1g-dev jq curl gcc g++ make cpio python3-requests python3-aiohttp && \
    python3 -m pip install --upgrade pip 

RUN wget --output-document - https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs python-is-python3

RUN npm install -g npm

WORKDIR /cellxgene_vip
RUN git clone https://github.com/interactivereport/cellxgene_VIP.git && cd cellxgene_VIP && ./config.sh