# v0.6.0

FROM astrabert/silly-gat-kay:latest

WORKDIR /gatk_modified

COPY ./shell/installations/conda_install_for_gatk /gatk_modified/conda_install_for_gatk

RUN bash /gatk_modified/conda_install_for_gatk/install_vcfstuff.sh

ENTRYPOINT [ "/bin/bash" ]

# sudo docker build . -f Dockerfile.gatk -t astrabert/silly-gat-kay:latest -t astrabert/silly-gat-kay:0.6.0