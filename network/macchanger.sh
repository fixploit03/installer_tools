#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: macchanger.sh
# * Deskripsi: Script Bash untuk instal tool macchanger secara otomatis
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
# * https://github.com/alobbs/macchanger
#---------------------------------------------------------------

apt-get update
apt install build-essential libc6-dev autoconf automake libtool pkg-config texinfo git -y
cd /opt
git clone https://github.com/alobbs/macchanger
cd macchanger
./autogen.sh
./configure
make
make install

# - END -
