#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
echo "Memeriksa VPS"

clear

if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi

NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/config.json")

clear
echo -e "┌─────────────────────────────────────────────────┐"
echo -e "           • Padam Pengguna Xray •              "
echo -e "└─────────────────────────────────────────────────┘"
echo -e "┌─────────────────────────────────────────────────┐"
grep -E "^## " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq | nl
echo -e ""
echo -e "  •[NOTA] Tekan mana -mana kekunci untuk kembali pada menu "
echo -e "└─────────────────────────────────────────────────┘"   
echo -e "───────────────────────────────────────────────────"
read -rp "   Nama Pengguna Input : " pengguna
if [ -z $user ]; then
menu-vmess
else
exp=$(grep -E "^## " "/etc/xray/config.json" | cut -d ' ' -f 3 | column -t | sort | uniq)
sed -i "/^## $user $exp/,/^},{/d" /etc/xray/config.json
systemctl restart xray > /dev/null 2>&1
clear
echo -e "┌─────────────────────────────────────────────────┐"
echo -e "│              • Padam Pengguna Xray •               │"
echo -e "└─────────────────────────────────────────────────┘"
echo -e "┌─────────────────────────────────────────────────┐"
echo -e "    • Akaun dihapuskan dengan jayanya"
echo -e " "
echo -e "    • Client Name : $user"
echo -e "    • Expired On  : $exp"
echo -e "└─────────────────────────────────────────────────┘" 
echo -e "┌────────────────────── BY ───────────────────────┐"
echo -e "│                  •    MTS    •                  │"
echo -e "└─────────────────────────────────────────────────┘" 
echo ""
#read -n 1 -s -r -p "   Press any key to back on menu"
#menuv
fi

