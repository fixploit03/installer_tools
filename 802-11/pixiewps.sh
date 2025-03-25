#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: pixiewps.sh
# * Deskripsi: Script Bash untuk instal tool pixiewps secara otomatis
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
# * https://github.com/wiire-a/pixiewps
#---------------------------------------------------------------

apt-get update -y
apt install build-essential libssl-dev git -y
cd /opt
git clone https://github.com/wiire-a/pixiewps
cd pixiewps
make
make install

# - END -
