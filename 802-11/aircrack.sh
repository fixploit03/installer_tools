#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: aircrack.sh
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
# * https://www.aircrack-ng.org/doku.php?id=install_aircrack
# * https://github.com/aircrack-ng/aircrack-ng
#---------------------------------------------------------------

apt-get update -y
apt-get install build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev ethtool shtool rfkill zlib1g-dev libpcap-dev libsqlite3-dev libpcre2-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils expect git -y
cd /opt
git clone https://github.com/aircrack-ng/aircrack-ng
cd aircrack-ng
autoreconf -i
./configure --with-experimental
make
make install
ldconfig
