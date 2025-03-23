#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: kismet.sh
# * Deskripsi: Script Bash untuk instal tool kismet secara otomatis
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
# * https://www.kismetwireless.net/docs/readme/installing/linux/
#---------------------------------------------------------------

apt-get update -y
apt install build-essential git libwebsockets-dev pkg-config zlib1g-dev libnl-3-dev libnl-genl-3-dev libcap-dev libpcap-dev libnm-dev libdw-dev libsqlite3-dev libprotobuf-dev libprotobuf-c-dev protobuf-compiler protobuf-c-compiler libsensors-dev libusb-1.0-0-dev python3 python3-setuptools python3-protobuf python3-requests python3-numpy python3-serial python3-usb python3-dev python3-websockets librtlsdr-dev libubertooth-dev libbtbb-dev libmosquitto-dev
cd /opt
git clone https://www.kismetwireless.net/git/kismet
cd kismet
./configure
make
make suidinstall
sudo usermod -aG kismet $USER

# reboot sistem dengan 'reboot'
# ketikkan 'groups' untuk melihat apakah user sudah ada di dalam grup kismet atau tidak.
