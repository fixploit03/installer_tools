#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: instal_mdk4.sh
# * Deskripsi: Script Bash untuk instal tool mdk4 secara otomatis
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
# * https://github.com/aircrack-ng/mdk4
#---------------------------------------------------------------

apt-get update -y
apt-get install pkg-config libnl-3-dev libnl-genl-3-dev libpcap-dev git -y
cd /opt
git clone https://github.com/aircrack-ng/mdk4
cd mdk4
make
make install
