# silly-gat-kay
Repository for Docker image `astrabert/silly-gat-kay` info and changelog

## Information on the image

Variant calling and statistical analysis of population genomics data requires a certain number of tools, which can differ for functioning and version between machines and platforms. This is why we created a virtual environment managed through Docker, based on broadinstitute/gatk: you can run the image inside a container, which will produce an isolated machine on which you can carry out your analysis, without conflicts.

The image is easily accessible through;

```bash
sudo docker pull astrabert/silly-gat-kay:latest
```

You should run it in interactive mode, possibily mounting your local file system into the container if you want to access data from your real machine inside the virtual one.

```bash
sudo docker run -v /path/to/your/project:/gatk_modified/drosophila-project -it astrabert/silly-gat-kay
```

Otherwise, adjust the path to the data you want to mount inside your Docker image in [`env`](./.env) under `USERDATA_PATH` and then simply run:

```bash
docker compose up -d
docker exec -it $(sudo docker ps -qf "name=drosophila_project_env") /bin/bash
```

Or, if you are on Linux/macOS:

```bash
bash compose.sh
```


You'll be put inside the container (a semi-isolated virtual machine) in which our Docker image is up and running, and you'll find all your mounted data under `/gatk_modified/userdata`.

The virtual machine is based on broadinstitute/gatk and provides a fully equipped environment for the analysis, divided into three conda envs:

- **gatk_modified**: contains all GATK dependencies, but also bwa-mem2 and cutadapt
- **picard**: contains picard-slim a lighter implementation of Picard which does not require r-base to run
- **platypus**: contains platypus-variants, a SNP-calling focused conda wrapper for Platypus
- **R**: contains r-base platform for data analysis in R and the library poolfstat
- **python_deps**: contains python3.11 and various libraries like pandas, biopython, pyyaml.
- **freebayes-env**: contains freebayes to run variant calling.

To activate the conda envs and deactivate them, run:

```bash
## activate
source activate platypus
## deactivate
conda deactivate
```
Apart from these conda envs, it also contains other tools like cmake, the basic text editor micro, the multi-threading gzipper pigz and the SRA toolkit. To make SRA-toolkit CLI work, you should run:

```bash
cd /gatk_modified
export PATH=$PATH:$PWD/sratoolkit.3.1.1-ubuntu64/bin
## check if it was successful
fastq-dump -h
```