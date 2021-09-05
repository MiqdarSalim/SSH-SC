#!/bin/bash
clear
echo Installing Websocket-SSH Python
sleep 1
echo Check Access Rights...
sleep 0.5
cd
#Install system auto run
#System OpenSSH Websocket-SSH Python
cd /etc/systemd/system/
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/darkrenz/noteX/main/websocket-python/ws-openssh.service
#System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/darkrenz/noteX/main/websocket-python/ws-stunnel.service

#Install Script Websocket-SSH Python
cd
cd /usr/local/bin/
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/darkrenz/noteX/main/websocket-python/ws-openssh && chmod +x /home/admin/ws-openssh
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/darkrenz/noteX/main/websocket-python/ws-stunnel && chmod +x /home/admin/ws-stunnel
#
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-openssh
cd
#
cd
systemctl daemon-reload
#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service
