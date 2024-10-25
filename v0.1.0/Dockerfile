FROM broadinstitute/gatk:latest

WORKDIR /gatk_modified
COPY ./shell/installations/conda_install_for_gatk /gatk_modified/conda_install_for_gatk

RUN apt-get update && apt-get install -y tar curl 
RUN apt update && apt install -y micro pigz

RUN bash /gatk_modified/conda_install_for_gatk/install_sra-toolkit.sh
RUN conda create -y --name gatk_modified --clone gatk
RUN bash /gatk_modified/conda_install_for_gatk/installations.sh
RUN bash /gatk_modified/conda_install_for_gatk/install_platypus.sh
RUN bash /gatk_modified/conda_install_for_gatk/install_picard.sh

ENTRYPOINT [ "/bin/bash" ]
# sudo docker build . -f Dockerfile -t astrabert/silly-gat-kay:latest -t astrabert/silly-gat-kay:0.1.0