#!/bin/bash
# // config Data
clear
mkdir -p /root/folder

# // DOWNLOAD VERSION 
echo -e "${GREEN}Harap Bersabar Tuan${NC}"
wget -q -O /root/status "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/statushariini"
wget -q -O /etc/version "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/versiupdate" && chmod +x /etc/version

# // DOWNLOAD MENU DI REPO ( menu )
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/menu.sh"
wget -q -O /usr/bin/m-udp "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-udp.sh"
wget -q -O /usr/bin/m-ssr "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-ssr.sh"
wget -q -O /usr/bin/m-vle "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-vle.sh"
wget -q -O /usr/bin/m-vme "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-vme.sh"
wget -q -O /usr/bin/m-tro "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-tro.sh"
wget -q -O /usr/bin/m-ssh "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-ssh.sh"
wget -q -O /usr/bin/m-bkp "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-bkp.sh"
wget -q -O /usr/bin/m-bot "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/me-bot.sh"
wget -q -O /usr/bin/m-ftr "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-ftr.sh"
wget -q -O /usr/bin/m-tme "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-tme.sh"
wget -q -O /usr/bin/m-upd "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-upd.sh"
wget -q -O /usr/bin/m-ipc "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-ipc.sh"
wget -q -O /usr/bin/m-nob "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/m-nob.sh" && chmod +x /usr/bin/m-nob


# // REPO ORANG
wget -q -O /usr/bin/menu-bckp "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/menu-bckp-github.sh"

# // SYSTEM
wget -q -O /usr/bin/delv2ray "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/delv2ray.sh"
wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/running.sh"
wget -q -O /usr/bin/cek-trafik "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/cek-trafik.sh"
wget -q -O /usr/bin/cek-speed "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/speedtes_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/cek-bandwidth.sh"
wget -q -O /usr/bin/cek-ram "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/ram.sh"
wget -q -O /usr/bin/limit-speed "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/limit-speed.sh"
wget -q -O /usr/bin/stopbot "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/stopbot.sh"
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/about.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/usernew.sh"
wget -q -O /usr/bin/wbm "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/webmin.sh"
wget -q -O /usr/bin/changer "https://raw.githubusercontent.com/Agunxzzz/XrayCol/main/minacantik/changer.sh"
wget -q -O /usr/bin/addhost  "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/addhost.sh"
wget -q -O /usr/bin/genssl  "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/genssl.sh"
wget -q -O /usr/bin/fix "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/cf.sh"
wget -q -O /etc/cyber.site "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/cyber.site"
wget -q -O /root/versi "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/versiupdate"
wget -q -O /usr/bin/fix "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/cf.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/setting.sh"
wget https://raw.githubusercontent.com/wayangkulit95/siakap/momok/backup/set-br.sh
bash set-br.sh

# THEME MENU
wget -q -O /usr/bin/dashboard1 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard1.sh"
wget -q -O /usr/bin/dashboard2 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard2.sh"
wget -q -O /usr/bin/dashboard3 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard3.sh"
wget -q -O /usr/bin/dashboard4 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard4.sh"
wget -q -O /usr/bin/dashboard5 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard5.sh"
wget -q -O /usr/bin/dashboard6 "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Themes/dashboard6.sh"


# // DOWNLOAD TRIALL
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial.sh" && chmod +x /usr/bin/trial
wget -q -O /usr/bin/trial-vmess "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial-vmess.sh" && chmod +x /usr/bin/trial-vmess
wget -q -O /usr/bin/trial-trojan "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial-trojan.sh" && chmod +x /usr/bin/trial-trojan
wget -q -O /usr/bin/trial-udp "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial-udp.sh" && chmod +x /usr/bin/trial-udp
wget -q -O /usr/bin/trial-vless "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial-vless.sh" && chmod +x /usr/bin/trial-vless
wget -q -O /usr/bin/menu-trial "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/trial/trial-generator.sh" && chmod +x /usr/bin/menu-trial

# //

# // INSTALL FIGLET
wget https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/3d.flf
mv 3d.flf /usr/share/figlet/

# // INSTALL SPEEDTEST
sudo apt-get install curl -y
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash

# // INSTALL WONDERSHAPER
sudo apt-get install speedtest
sudo apt-get install python3-pip -y
pip3 install speedtest-cli
sudo apt install wondershaper -y
cd bin
git clone https://github.com/magnific0/wondershaper.git
cd wondershaper
sudo make install
sudo apt install squid -y
mkdir /var/lib/ssnvpn-pro/
rm -f /usr/bin/menu-ssh
wget -q -O /var/lib/ssnvpn-pro/ipvps.conf "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/ipvps.conf"
wget -q -O /usr/bin/autokill "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/autokill.sh" && chmof +x /usr/bin/autokill
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/bot "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Finaleuy/bot.sh" && chmod +x /usr/bin/bot
wget -q -O /root/chat "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Finaleuy/chatid.sh" && chmod +x /usr/bin/chatid
wget -q -O /usr/bin/limitvmess "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/limitvmess.sh" && chmod +x /usr/bin/limitvmess
wget -q -O /usr/bin/limitvless "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/limitvless.sh" && chmod +x /usr/bin/limitvless
wget -q -O /usr/bin/limittrojan "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/limittrojan.sh" && chmod +x /usr/bin/limittrojan
wget -q -O /usr/bin/sistem "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/sistem.sh" && chmod +x /usr/bin/sistem
wget -q -O /etc/crontab "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/crontab" && chmod 644 /etc/crontab
wget -q -O /usr/bin/cftn "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/cftn.sh" && chmod +x /usr/bin/cftn
wget -q -O /usr/bin/infosc "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/info.sh" && chmod +x /usr/bin/infosc
echo "*/2 * * * * root sistem" >> /etc/crontab

rm /etc/rsyslog.d/50-default.conf

wget https://raw.githubusercontent.com/wayangkulit95/siakap/momok/50-default.conf


cp 50-default.conf /etc/rsyslog.d/50-default.conf
service rsyslog restart

wget -q -O /etc/default/dropbear "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/dropbear" && chmod +x /etc/default/dropbear

wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/xp.sh" && chmod +x /usr/bin/xp
#SERVICE xp
cat >/etc/systemd/system/xp.service << EOF
[Unit]
Description=My 
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/xp
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart xp
systemctl enable xp
systemctl restart xp


#service tendang


cat >/etc/systemd/system/tendang.service << EOF
[Unit]
Description=PT.cybervpn ltd.
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/tendang
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart tendang
systemctl enable tendang
systemctl restart tendang


wget -q -O /usr/bin/limitipxray "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/limitipxray.py" && chmod +x /usr/bin/limitipxray


cat >/etc/systemd/system/iplimit.service << EOF
[Unit]
Description=PT.cybervpn ltd.
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 /usr/bin/limitipxray
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart iplimit
systemctl enable iplimit
systemctl restart iplimit

# // INSTALL NOOBZVPNS PROTOKOL
wget https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/noobzvpns.zip
unzip noobzvpns.zip
cd noobzvpns
bash install.sh
rm noobzvpns.zip
systemctl restart noobzvpns




touch /etc/trialxray.txt


wget -q -O /usr/bin/service-trial "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/service-trial.sh" && chmod +x /usr/bin/service-trial


cat >/etc/systemd/system/trial.service << EOF
[Unit]
Description=PT.cybervpn ltd.
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/service-trial
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart trial
systemctl enable trial
systemctl restart trial


#############################################
###### MTS TUNNELING | MTS PROJECT #######
#############################################
# Dir /tmp Protocol
mkdir /tmp/vmess
mkdir /tmp/vless
mkdir /tmp/trojan
mkdir /tmp/noobzvpns
mkdir /tmp/shadowsocks
mkdir /tmp/ssh
# Mkdir /etc/
mkdir /etc/lunatic/noobzvpns
mkdir /etc/lunatic/shadowsocks
mkdir /etc/lunatic/trojan
mkdir /etc/lunatic/vless
mkdir /etc/lunatic/vmess
mkdir /etc/lunatic/ssh
mkdir /etc/lunatic/sstp
mkdir /etc/lunatic/l2tp
#  Folder Account
touch /etc/lunatic/noobzvpns/.noobzvpns.db
touch /etc/lunatic/shadowsocks/.shadowsocks.db
touch /etc/lunatic/vless/.vless.db
touch /etc/lunatic/vmess/.vmess.db
touch /etc/lunatic/trojan/.trojan.db
touch /etc/lunatic/sstp/.sstp.db
touch /etc/lunatic/l2tp/.l2tp.db
# Plugin Account
echo "& plughin Account" >>/etc/lunatic/noobzvpns/.noobzvpns.db
echo "& plughin Account" >>/etc/lunatic/shadowsocks/.shadowsocks.db
echo "& plughin Account" >>/etc/lunatic/vless/.vless.db
echo "& plughin Account" >>/etc/lunatic/vmess/.vmess.db
echo "& plughin Account" >>/etc/lunatic/trojan/.trojan.db
echo "& plughin Account" >>/etc/lunatic/ssh/.ssh.db
echo "& plughin Account" >>/etc/lunatic/sstp/.sstp.db
echo "& plughin Account" >>/etc/lunatic/l2tp/.l2tp.db
echo "& plughin Account" >>/etc/lunatic/bot/.bot.db
# Folder Dir Limit ip Account
mkdir -p /etc/cybervpn/limit/vmess/ip/
mkdir -p /etc/cybervpn/limit/vless/ip/
mkdir -p /etc/cybervpn/limit/trojan/ip/
mkdir -p /etc/cybervpn/limit/ssh/ip/
mkdir -p /etc/cybervpn/limit/noobs/ip/
mkdir -p /etc/cybervpn/limit/shadowsocks/ip/
mkdir -p /etc/cybervpn/limit/sstp/ip/
mkdir -p /etc/cybervpn/limit/l2tp/ip/

# Detect account Noobzvpns
mkdir /etc/noobzvpns
touch /etc/noobzvpns/.noobzvpns.db
echo "& plughin Account" >>/etc/noobzvpns/.noobzvpns.db

chmod 777 /root/chat
chmod 777 /usr/bin/bot

#chmod 777 /usr/bin/addudp
#chmod 777 /usr/bin/udp


# // chmod +x menu
chmod +x /usr/bin/dashboard # Ui Menu 1
chmod +x /usr/bin/menu # Ui Menu 2
chmod +x /usr/bin/m-upd # Menu Update sc
chmod +x /usr/bin/m-ssh # Menu ssh
chmod +x /usr/bin/m-vme # Menu vmess
chmod +x /usr/bin/m-vle # Menu vless
chmod +x /usr/bin/m-tro # Menu trojan
chmod +x /usr/bin/m-ssr # Menu sadowsock
chmod +x /usr/bin/m-ipc # Menu ipsec
chmod +x /usr/bin/m-nob # Menu nobzvpn 
chmod +x /usr/bin/m-udp # Menu udp custom
chmod +x /usr/bin/m-tme # Menu theme / ubah menu
chmod +x /usr/bin/m-tri # Menu Trial Account
chmod +x /usr/bin/m-bot # Menu Bot Telegram
chmod +x /usr/bin/m-bkp # Menu Backup
chmod +x /usr/bin/m-tri # Memu Trial Generator
chmod +x /usr/bin/m-hos # Menu Change Domain
chmod +x /usr/bin/m-fix # Menu Fix Nginx OFFLINE


# // REPO SYSTEM SCRIPT
chmod +x /usr/bin/about
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/addhost
chmod +x /usr/bin/genssl
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/cek-ram
chmod +x /usr/bin/limit-speed
chmod +x /usr/bin/delvray
chmod +x /usr/bin/stopbot
chmod +x /usr/bin/wbm
chmod +x /usr/bin/xp
chmod +x /usr/bin/changer
chmod +x /usr/bin/fix
chmod +x /usr/bin/tendang
chmod +x /usr/bin/autokill
mkdir -p /etc/ssnvpn/theme/
touch /etc/ssnvpn/theme/color.conf
touch /root/limit/rulesxray.txt

#chmod +x /usr/bin/update
rm -rf set-br.sh
