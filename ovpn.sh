#!/bin/bash

#fast setup with old keys, optional if we want new key
cd /
wget https://raw.githubusercontent.com/MappakkoE/autoscript/master/ovpn.tar
tar -xvf ovpn.tar
rm ovpn.tar
service openvpn-nl restart
openvpn-nl --remote CLIENT_IP --dev tun0 --ifconfig 10.9.8.1 10.9.8.2
rm ovpn.sh
