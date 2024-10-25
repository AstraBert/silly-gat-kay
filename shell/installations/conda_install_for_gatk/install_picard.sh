eval "$(conda shell.bash hook)"

conda create -y --name picard
conda activate picard
conda install -y bioconda::picard-slim
conda deactivate