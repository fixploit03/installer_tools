#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: cowpatty.sh
# * Deskripsi: Script Bash untuk instal tool aircrack-ng secara otomatis
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
# * https://github.com/wieerwill/MobilePenBerry/blob/master/tools/cowpatty.md
#---------------------------------------------------------------

apt-get update -y
apt install git clang -y
git clone https://github.com/joswr1ght/cowpatty
cd cowpatty
make
make install
