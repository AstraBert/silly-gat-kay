apt-get update && apt-get install -y curl zip unzip tar pkg-config

apt update && \
apt install -y software-properties-common lsb-release && \
apt clean all

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null

apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"

apt update
apt install -y kitware-archive-keyring
rm /etc/apt/trusted.gpg.d/kitware.gpg

apt update
apt install -y cmake