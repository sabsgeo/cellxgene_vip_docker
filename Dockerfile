FROM continuumio/anaconda3:2020.07
# /opt/conda
WORKDIR /cellxgene_vip
RUN git clone https://github.com/interactivereport/cellxgene_VIP.git
RUN ./cellxgene_VIP/config.sh
# RUN conda config --set channel_priority flexible
# RUN conda env create -n cellxgene_vip -f cellxgene_vip.yml 
# RUN conda activate