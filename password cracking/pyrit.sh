#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: pyrit.sh
# * Deskripsi: Script Bash untuk instal tool pyrit secara otomatis
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
# * https://github.com/JPaulMora/Pyrit/
#---------------------------------------------------------------

apt-get update -y
# instal python2.7.18
apt-get install build-essential wget tar checkinstall libncursesw5-dev libncurses5-dev libssl-dev libsqlite3-dev  tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev libgdbm-dev libnss3-dev libreadline-dev libffi-dev -y
cd /usr/src
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar xzf Python-2.7.18.tgz
cd Python-2.7.18
./configure --enable-optimizations
make altinstall
python2.7 --version
# instal pip2
apt-get install curl -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2.7 get-pip.py
pip2 --version
# instal pyrit
cd /opt
wget https://github.com/JPaulMora/Pyrit/archive/refs/tags/0.4.0.tar.gz
tar zxvf 0.4.0.tar.gz
cd Pyrit-0.4.0
tar zxvf pyrit-0.4.0.tar.gz
cd pyrit-0.4.0
python2.7 setup.py clean
python2.7 setup.py build
python2.7 setup.py install
