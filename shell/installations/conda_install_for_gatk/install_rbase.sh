eval "$(conda shell.bash hook)"

conda create -y --name R
conda activate R
conda install -y conda-forge::r-base
conda deactivate