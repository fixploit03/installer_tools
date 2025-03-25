#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: hcxtools.sh
# * Deskripsi: Script Bash untuk instal tool hcxtools secara otomatis
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
# * https://github.com/ZerBea/hcxtools
#---------------------------------------------------------------

apt-get update -y
apt-get install build-essential gcc make pkg-config libssl-dev zlib1g-dev libcurl4-openssl-dev libpcap-dev git -y
cd /opt
git clone https://github.com/ZerBea/hcxtools
cd hcxtools
make -j $(nproc)
make install
ln -s /usr/bin/hcxpcapngtool /usr/bin/hcxpcaptool

# - END -
