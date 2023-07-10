FROM continuumio/anaconda3:2020.07
# /opt/conda
WORKDIR /cellxgene_vip
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