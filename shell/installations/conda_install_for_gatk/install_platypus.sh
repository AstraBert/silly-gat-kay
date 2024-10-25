eval "$(conda shell.bash hook)"

conda create -y --name platypus
conda activate platypus
conda install -y bioconda::platypus-variant
# platypus callVariants -h 
conda deactivate