eval "$(conda shell.bash hook)"

conda activate R
conda install -y bioconda::bioconductor-complexheatmap
conda deactivate
