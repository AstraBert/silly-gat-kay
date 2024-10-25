eval "$(conda shell.bash hook)"

conda create -y --name python_deps python=3.11

source activate python_deps
conda install -y anaconda::pandas
conda install -y anaconda::pyyaml
conda install -y conda-forge::biopython
conda deactivate