#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: pyrit.sh
# * Deskripsi: Script Bash untuk instal tool pyrit secara otomatis
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
# * https://github.com/JPaulMora/Pyrit/
#---------------------------------------------------------------

# instal python2.7.18 (jika belum ada)
if [[ ! -d "/usr/srcPython-2.7.18" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/programming%20language/python/python2/python2.7.18/instal.sh)"
fi

# instal pyrit
cd /opt
wget https://github.com/JPaulMora/Pyrit/archive/refs/tags/0.4.0.tar.gz
tar zxvf 0.4.0.tar.gz
cd Pyrit-0.4.0
tar zxvf pyrit-0.4.0.tar.gz
cd pyrit-0.4.0
python setup.py clean
python setup.py build
python setup.py install

# - END -
