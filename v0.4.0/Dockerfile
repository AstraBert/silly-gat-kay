# v0.4.0

FROM astrabert/silly-gat-kay:0.3.0

WORKDIR /gatk_modified

COPY ./shell/installations/conda_install_for_gatk /gatk_modified/conda_install_for_gatk

RUN bash /gatk_modified/conda_install_for_gatk/install_cmake.sh

ENTRYPOINT [ "/bin/bash" ]

# sudo docker build . -f Dockerfile -t astrabert/silly-gat-kay:0.4.0