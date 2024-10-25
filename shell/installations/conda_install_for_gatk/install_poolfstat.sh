eval "$(conda shell.bash hook)"

conda activate R
conda install -y r-poolfstat
conda deactivate