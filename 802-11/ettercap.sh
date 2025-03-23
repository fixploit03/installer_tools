#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: ettercap.sh
# * Deskripsi: Script Bash untuk instal tool ettercap secara otomatis
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
# * https://github.com/Ettercap/ettercap/blob/master/INSTALL
#---------------------------------------------------------------

apt-get update -y
apt-get install build-essential debhelper bison check cmake flex groff libbsd-dev libcurl4-openssl-dev libmaxminddb-dev libgtk-3-dev libltdl-dev libluajit-5.1-dev libncurses5-dev libnet1-dev libpcap-dev libpcre2-dev libssl-dev
cd /opt
git clone https://github.com/Ettercap/ettercap
cd ettercap
mkdir build
cd build
cmake ../
make
make install
