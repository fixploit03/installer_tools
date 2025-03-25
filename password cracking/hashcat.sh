#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: hashcat.sh
# * Deskripsi: Script Bash untuk instal tool hashcat secara otomatis
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
# * https://github.com/hashcat/hashcat/blob/master/BUILD.md
#---------------------------------------------------------------

apt update
apt install -y build-essential git cmake pkg-config libssl-dev zlib1g-dev
# Kalo mau instal driver NVIDIA uncomment perintah ini:
# apt install -y nvidia-cuda-toolkit
# Kalo mau instal driver AMD uncomment perintah ini:
# apt install -y rocm-opencl-runtime
# Kalo mau fitur tambahan seperti debugging atau pengujian uncomment perintah ini:
# apt install -y ocl-icd-libopencl1 ocl-icd-opencl-dev opencl-headers
cd /opt
sudo git clone https://github.com/hashcat/hashcat
cd hashcat
make
make install
# - END -


