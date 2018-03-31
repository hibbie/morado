#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
IP=$(dig +short myip.opendns.com @resolver1.opendns.com.)

echo -e "IP: $IP"
if [[ ${IP:0:3} == "47." ]] ; then 
    echo -e "${RED}Using Suddenlink DNS - Killing deluged${NC}"
    /usr/bin/killall deluged deluge-web
else 
    echo -e "Using Private Internet Access DNS - deluge ok"; 
fi
