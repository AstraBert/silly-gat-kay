eval "$(conda shell.bash hook)"

conda activate gatk_modified
conda install -y bioconda::bwa-mem2
conda install -y bioconda::cutadapt
conda deactivate