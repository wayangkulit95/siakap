#!/bin/bash

clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
NUMBER_OF_CLIENTS=$(grep -E "^## " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq)
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		 echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
             echo -e " \e[1;97;101mMemperbaharui akaun Shadowsocks       \e[0m"
             echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
		echo ""
		echo "Anda tidak mempunyai pelanggan sedia ada!"
        echo ""
		exit 1
	fi
             echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

read -p "nama pengguna: " user
read -p "Melanjutkan (hari): " masaaktif
exp=$(grep -wE "^## $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`

if [ ! -e /etc/shadowsocks/ ]; then
  mkdir -p /etc/shadowsocks/
fi

sed -i "s/## $user $exp/## $user $exp4/g" /etc/xray/config.json
sed -i "s/## $user $exp/## $user $exp4/g" /etc/shadowsocks/.shadowsocks.db
systemctl restart xray
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e " \e[1;97;101m      Succes Renew Shadowsocks Akaun       \e[0m"
  echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " Nama pelanggan     : $user"
echo " Tamat tempoh Pada  : $exp4"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
