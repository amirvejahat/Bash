#!/bin/bash

#Requirements : nmap package
#
# 1 - apt-get install nmap
#

subnet="192.168.1.0/24"
mac_address="XX:XX:XX:XX:XX:XX"

nmap -sP $subnet > /dev/null && arp -an | grep -i $mac_address | awk '{print $2}' | sed 's/[()]//g'

