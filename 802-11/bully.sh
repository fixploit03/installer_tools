#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: bully.sh
# * Deskripsi: Script Bash untuk instal tool bully secara otomatis
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
# * https://github.com/aanarchyy/bully
#---------------------------------------------------------------

apt-get update -y
apt-get -y install build-essential libpcap-dev curl -y
# instal aircrack-ng (jika belum ada)
if [[ ! -d "/opt/aircrack-ng" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/aircrack.sh)"
fi
# instal pixiewps (jika belum ada)
if [[ ! -d "/opt/pixiewps" ]]; then
     sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/pixiewps.sh)"
fi
cd /opt
git clone https://github.com/aanarchyy/bully
cd bully/src
make
make install
