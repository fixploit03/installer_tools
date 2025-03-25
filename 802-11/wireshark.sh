#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: wireshark.sh
# * Deskripsi: Script Bash untuk instal tool wireshark secara otomatis
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
# * https://github.com/wireshark/wireshark/blob/master/INSTALL
#---------------------------------------------------------------

apt-get update -y
apt-get install git cmake build-essential gcc g++ flex bison libpcap-dev libssl-dev libglib2.0-dev wget curl qt6-base-dev qt6-tools-dev libqt6svg6-dev qt6-base-private-dev libqt6core5compat6-dev libpcre2-dev libgcrypt20-dev liblua5.3-dev libkrb5-dev libmaxminddb-dev asciidoctor xsltproc libspeexdsp-dev libsmi-dev libc-ares-dev libnghttp2-dev
cd /opt
sudo git clone https://gitlab.com/wireshark/wireshark
cd wireshark
mkdir build
cd build
cmake .. -DCMAKE_PREFIX_PATH=/usr/lib/qt6 -DBUILD_wireshark=ON -DBUILD_tshark=ON -DENABLE_PLUGINS=ON -DENABLE_LUA=ON
make -j$(nproc)
make install
# opsi agar dapat menjalankan wireshark tanpa root
# uncomment perintah ini:
#
# groupadd wireshark
# usermod -aG wireshark $USER
# chgrp wireshark /usr/local/bin/dumpcap
# chmod 750 /usr/local/bin/dumpcap
# setcap cap_net_raw,cap_net_admin=eip /usr/local/bin/dumpcap
# newgrp wireshark
#
# - END -
