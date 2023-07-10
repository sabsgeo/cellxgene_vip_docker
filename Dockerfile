FROM python:3.8.17-bookworm
# /opt/conda
WORKDIR /cellxgene_vip
RUN echo "Test1"
RUN git clone https://github.com/sabsgeo/cellxgene_VIP.git
RUN apt-get --allow-releaseinfo-change update && apt-get install -y build-essential \
    jq \
    Node.js \
    npm \
    cpio
RUN cd cellxgene_VIP && ./config.sh
# RUN conda config --set channel_priority flexible
# RUN conda env create -n cellxgene_vip -f cellxgene_vip.yml 
# RUN conda activate