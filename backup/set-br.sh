#!/bin/bash

# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
sudo apt install ruby -y
gem install lolcat -y
apt install msmtp-mta ca-certificates bsd-mailx -y
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m        ENTER TELEGRAM ID          \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e[96;1m Masukkan ID Telegram anda \e[0m"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -rp " Just Input id Telegram : " nenen
echo "$nenen" >> /root/id

cd /usr/bin
wget -O mautobackup "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/backup/autobackup.sh"
wget -O /usr/bin/mbackup "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/backup/backup.sh"
wget -O /usr/bin/mrestore "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/backup/restore.sh"



wget -O mlimitspeed "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/backup/limitspeed.sh"
chmod +x mautobackup
chmod +x /usr/bin/mbackup
chmod +x /usr/bin/mrestore
chmod +x mlimitspeed
cd
rm -f /root/set-boba.sh
