#!/bin/bash
LocalVersion=$(cat /root/versi)
Version=$(curl -sS https://raw.githubusercontent.com/wayangkulit95/siakap/momok/versi | awk '{print $2}')
if [ $LocalVersion = $Version ]; then
echo -e "Script Sudah Versi Terbaru..." | lolcat
else
echo -e "Update tersedia!!";
wget -q -O updateyes.sh https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/updateyes.sh && chmod +x updateyes.sh && ./updateyes.sh
rm -f updateyes.sh
fi
