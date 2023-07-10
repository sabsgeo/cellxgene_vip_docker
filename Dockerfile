FROM continuumio/anaconda3:2023.03-1
# /opt/conda
WORKDIR /cellxgene_vip
RUN ls /opt/conda
# RUN git clone https://github.com/interactivereport/cellxgene_VIP.git
# RUN conda config --set channel_priority flexible
# RUN conda env create -n cellxgene_vip -f cellxgene_vip.yml 
# RUN conda activate