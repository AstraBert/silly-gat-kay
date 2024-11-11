eval "$(conda shell.bash hook)"

conda activate R
conda install -y conda-forge::r-ranger
conda install -y conda-forge::r-abcrf
conda install -y r::r-mass
conda deactivate

conda activate gatk_modified
conda install -y bioconda::sra-tools
conda deactivate