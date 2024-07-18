#!/bin/bash 


#ebtables -t nat -A POSTROUTING -o eth0 -j snat --to-src 02:33:26:49:c9:93

iptables -t nat -I POSTROUTING -o eth0 -s 172.31.0.0/16 ! -d 172.31.0.0/16 -j MASQUERADE
