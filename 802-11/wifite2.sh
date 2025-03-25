#!/bin/bash
#
#-------------------------------------------------------------
# Tentang Script:
#
# * Nama file: wifite2.sh
# * Deskripsi: Script Bash untuk instal tool wifite2 secara otomatis
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
# * https://github.com/derv82/wifite2
#---------------------------------------------------------------

apt-get update -y
apt-get install net-tools wireless-tools -y

# instal python2.7.18 (jika belum ada)
if [[ ! -d "/usr/src/Python-2.7.18" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/programming%20language/python/python2/python2.7.18/instal.sh)"
fi
# instal python3.12.3 (jika belum ada)
if [[ ! -d "/usr/src/Python-3.12.3" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/programming%20language/python/python3/python3.12.3/instal.sh)"
fi

# instal aircrack-ng (jika belum ada)
if [[ ! -d "/opt/aircrack-ng" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/aircrack-ng.sh)"
fi
# instal wireshark (jika belum ada)
if [[ ! -d "/opt/wireshark" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/wireshark.sh)"
fi
# instal reaver (jika belum ada)
if [[ ! -d "/opt/reaver-wps-fork-t6x" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/reaver.sh)"
fi
# instal bully (jika belum ada)
if [[ ! -d "/opt/bully" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/bully.sh)"
fi
# instal cowpatty (jika belum ada)
if [[ ! -d "/opt/cowpatty" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/cowpatty.sh)"
fi
# instal pyrit (jika belum ada)
if [[ ! -d "/opt/Pyrit-0.4.0" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/password%20cracking/pyrit.sh)"
fi
# instal hashcat (jika belum ada)
if [[ ! -d "/opt/hashcat" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/password%20cracking/hashcat.sh)"
fi
# instal hcxdumptool (jika belum ada)
if [[ ! -d "/opt/hcxdumptool" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/802-11/hcxdumptool.sh)"
fi
# instal hcxpcaptool (jika belum ada)
if [[ ! -d "/opt/hcxtools" ]]; then
      sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fixploit03/installer_tools/refs/heads/main/password%20cracking/hcxtools.sh)"
fi

# - END -
