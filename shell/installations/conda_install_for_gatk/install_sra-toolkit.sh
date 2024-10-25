wget --output-document sratoolkit.tar.gz https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz 
tar -vxzf sratoolkit.tar.gz 
# export PATH=$PATH:$PWD/sratoolkit.3.1.1-ubuntu64/bin
# fastq-dump -h