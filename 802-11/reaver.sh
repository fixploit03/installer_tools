#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: reaver.sh
# * Deskripsi: Script Bash untuk instal tool reaver secara otomatis
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
# * https://github.com/t6x/reaver-wps-fork-t6x
#---------------------------------------------------------------

apt-get update -y
apt install build-essential libpcap-dev sqlite3 libsqlite3-dev git -y
cd /opt
git clone https://github.com/t6x/reaver-wps-fork-t6x.git
cd reaver-wps-fork-t6x
./configure
make
make install
