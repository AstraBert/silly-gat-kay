eval "$(conda shell.bash hook)"

conda activate gatk_modified
conda install -y bioconda::exonerate
conda deactivate

conda create -y --name freebayes-env
conda activate freebayes-env
conda install -y bioconda::freebayes
conda deactivate