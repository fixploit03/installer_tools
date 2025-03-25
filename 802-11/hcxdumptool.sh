#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: hcxdumptool.sh
# * Deskripsi: Script Bash untuk instal tool hcxdumptool secara otomatis
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
# * https://github.com/ZerBea/hcxdumptool
#---------------------------------------------------------------

apt-get update -y
apt-get install build-essential libssl-dev zlib1g-dev gcc make libpcap-dev git -y
cd /opt
git clone https://github.com/ZerBea/hcxdumptool
cd hcxdumptool
make -j $(nproc)
make install

# - END -
