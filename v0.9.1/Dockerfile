# v0.9.1

FROM astrabert/silly-gat-kay:0.9.0

WORKDIR /gatk_modified

COPY ./shell/installations/conda_install_for_gatk /gatk_modified/conda_install_for_gatk

RUN bash /gatk_modified/conda_install_for_gatk/install_black_pysam.sh

ENTRYPOINT [ "/bin/bash" ]

# sudo docker build . -f Dockerfile -t astrabert/silly-gat-kay:0.9.1