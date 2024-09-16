#!/bin/bash
# ===============================================
sudo apt install squid -y
mkdir /var/lib/ssnvpn-pro/
rm -f /usr/bin/menu-ssh


wget -q -O /var/lib/ssnvpn-pro/ipvps.conf "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/ipvps.conf"
wger -q -O /usr/bin/tendang "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/tendang.sh"
#wget -q -O /usr/bin/autokill "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/limit/autokill.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/menu-ssh.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/menu/restart.sh"
chmod +x /usr/bin/restart
wget -q -O /usr/bin/bot "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Finaleuy/bot.sh"
wget -q -O /root/chat "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/Finaleuy/chatid.sh"
chmod 777 /root/chat
chmod 777 /usr/bin/bot

chmod +x /usr/bin/tendang
chmod +x /usr/bin/autokill
chmod +x /usr/bin/menu-ssh
#setting IPtables
iptables -I INPUT -p udp --dport 5300 -j ACCEPT
iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
netfilter-persistent save
netfilter-persistent reload



#delete directory
rm -rf /root/nsdomain
rm nsdomain

#input nameserver manual to cloudflare

clear
#figlet "slowdns" | lolcat
#read -rp "Masukkan Nameserver: " -e sub
#sub=ns.`(</dev/urandom tr -dc a-z0-9 | head -c5)`
#sub=ns.`</dev/urandom tr -dc x-z0-9 | head -c4`
#SUB_DOMAIN=${sub}.inject.cloud
#NS_DOMAIN=${SUB_DOMAIN}
#echo $NS_DOMAIN > /root/nsdomain
#REPOS="https://github.com/JurigVPN/scupdate/raw/jurig/"
ns_domain_cloudflare() {
	DOMAIN="slowdns.cfd"
	DOMAIN_PATH=$(cat /etc/xray/domain)
	SUB=$(tr </dev/urandom -dc a-z0-9 | head -c7)
	SUB_DOMAIN=${SUB}."slowdns.cfd"
	NS_DOMAIN=dns.${SUB_DOMAIN}
	CF_ID=muhamadhaisyamkhairizmi@gmail.com
        CF_KEY=1bd1fdfcd2df775f9768e5601d539538dcf2d
	set -euo pipefail
	IP=$(wget -qO- ipinfo.io/ip)
	echo "Updating DNS NS for ${NS_DOMAIN}..."
	ZONE=$(
		curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
		-H "X-Auth-Email: ${CF_ID}" \
		-H "X-Auth-Key: ${CF_KEY}" \
		-H "Content-Type: application/json" | jq -r .result[0].id
	)

	RECORD=$(
		curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${NS_DOMAIN}" \
		-H "X-Auth-Email: ${CF_ID}" \
		-H "X-Auth-Key: ${CF_KEY}" \
		-H "Content-Type: application/json" | jq -r .result[0].id
	)

	if [[ "${#RECORD}" -le 10 ]]; then
		RECORD=$(
			curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
			-H "X-Auth-Email: ${CF_ID}" \
			-H "X-Auth-Key: ${CF_KEY}" \
			-H "Content-Type: application/json" \
			--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${DOMAIN_PATH}'","proxied":false}' | jq -r .result.id
		)
	fi

	RESULT=$(
		curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
		-H "X-Auth-Email: ${CF_ID}" \
		-H "X-Auth-Key: ${CF_KEY}" \
		-H "Content-Type: application/json" \
		--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${DOMAIN_PATH}'","proxied":false}'
	)
	echo $NS_DOMAIN >/etc/xray/dns
}

# exekusi
ns_domain_cloudflare

nameserver=$(cat /root/nsdomain)
apt update -y
apt install -y python3 python3-dnslib net-tools
apt install dnsutils -y
#apt install golang -y
apt install git -y
apt install curl -y
apt install wget -y
apt install screen -y
apt install cron -y
apt install iptables -y
apt install -y git screen whois dropbear wget
#apt install -y pwgen python php jq curl
apt install -y sudo gnutls-bin
#apt install -y mlocate dh-make libaudit-dev build-essential
apt install -y dos2unix debconf-utils
service cron reload
service cron restart




#konfigurasi slowdns
rm -rf /etc/slowdns
mkdir -m 777 /etc/slowdns
wget -q -O /etc/slowdns/server.key "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/SLDNS/server.key"
wget -q -O /etc/slowdns/server.pub "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/SLDNS/server.pub"
wget -q -O /etc/slowdns/sldns-server "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/SLDNS/sldns-server"
wget -q -O /etc/slowdns/sldns-client "https://raw.githubusercontent.com/wayangkulit95/siakap/momok/SLDNS/sldns-client"
cd
chmod +x /etc/slowdns/server.key
chmod +x /etc/slowdns/server.pub
chmod +x /etc/slowdns/sldns-server
chmod +x /etc/slowdns/sldns-client

cd
#wget -q -O /etc/systemd/system/client-sldns.service "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/SLDNS/client-sldns.service"
#wget -q -O /etc/systemd/system/server-sldns.service "http://sgpx.cybervpn.site:81/Autoscript-by-azi-main/SLDNS/server-sldns.service"

cd
#install client-sldns.service
cat > /etc/systemd/system/client-sldns.service << END
[Unit]
Description=Client SlowDNS By CyberVPN
Documentation=https://www.xnxx.com
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-client -udp 8.8.8.8:53 --pubkey-file /etc/slowdns/server.pub $nameserver 127.0.0.1:58080
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

cd
#install server-sldns.service
cat > /etc/systemd/system/server-sldns.service << END
[Unit]
Description=Server SlowDNS By Cybervpn
Documentation=https://xhamster.com
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-server -udp :5300 -privkey-file /etc/slowdns/server.key $nameserver 127.0.0.1:22
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

#permission service slowdns
cd
chmod +x /etc/systemd/system/client-sldns.service

chmod +x /etc/systemd/system/server-sldns.service
pkill sldns-server
pkill sldns-client

systemctl daemon-reload
systemctl stop client-sldns
systemctl stop server-sldns

systemctl enable client-sldns
systemctl enable server-sldns

systemctl start client-sldns
systemctl start server-sldns

systemctl restart client-sldns
systemctl restart server-sldns
