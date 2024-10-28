eval "$(conda shell.bash hook)"

conda activate R
conda install -y r-vcfR r-cowplot r-reshape2
conda deactivate