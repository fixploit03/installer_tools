#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: instal.sh
# * Deskripsi: Script Bash untuk instal bahasa pemrograman python versi 3.12.3 secara otomatis
# * Dibuat oleh: Rofi (Fixploit03)
# * Github: https://github.com/fixploit03/installer_tools
#--------------------------------------------------------------
# Catatan:
#
# * Jalankan scriptnya sebagai root (sudo su)
# * Pastikan Anda memiliki koneksi internet yang stabil
#---------------------------------------------------------------
# Sumber:
#
# * https://www.python.org/
#---------------------------------------------------------------

apt update
apt install build-essential libffi-dev libgdbm-dev libncurses5-dev libreadline-dev libsqlite3-dev libssl-dev libbz2-dev liblzma-dev zlib1g-dev tk-dev uuid-dev libnss3-dev wget git libexpat1-dev libmpdec-dev libpcre3-dev libfreetype6-dev libjpeg-dev libpng-dev -y
cd /usr/src
wget https://www.python.org/ftp/python/3.12.3/Python-3.12.3.tgz
tar -xvf Python-3.12.3.tgz
cd Python-3.12.3
./configure --enable-optimizations
make -j$(nproc)
sudo make altinstall
python3.12 -m ensurepip --default-pip
python3.12 -m pip install --upgrade pip
ln -sf /usr/local/bin/python3.12 /usr/bin/python3
ln -sf /usr/local/bin/pip3.12 /usr/bin/pip3

# - END -
