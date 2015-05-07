#!/bin/bash
cd /etc/openvpn/2.0
./sign-req-server server_back_end
./sign-req hostMilano
scp /etc/openvpn/2.0/keys/hostMilano.crt hostMilano@192.167.5.2:/etc/openvpn/2.0/keys
scp /etc/openvpn/2.0/keys/server_back_end.crt server_back_end@192.168.1.2:/etc/openvpn/2.0/keys
