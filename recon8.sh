#!/bin/bash

print_banner() {
cat << "EOF"
                                                                                                                  
                                                                                                                  
RRRRRRRRRRRRRRRRR                                                                                   888888888     
R::::::::::::::::R                                                                                88:::::::::88   
R::::::RRRRRR:::::R                                                                             88:::::::::::::88 
RR:::::R     R:::::R                                                                           8::::::88888::::::8
  R::::R     R:::::R    eeeeeeeeeeee        cccccccccccccccc   ooooooooooo   nnnn  nnnnnnnn    8:::::8     8:::::8
  R::::R     R:::::R  ee::::::::::::ee    cc:::::::::::::::c oo:::::::::::oo n:::nn::::::::nn  8:::::8     8:::::8
  R::::RRRRRR:::::R  e::::::eeeee:::::ee c:::::::::::::::::co:::::::::::::::on::::::::::::::nn  8:::::88888:::::8 
  R:::::::::::::RR  e::::::e     e:::::ec:::::::cccccc:::::co:::::ooooo:::::onn:::::::::::::::n  8:::::::::::::8  
  R::::RRRRRR:::::R e:::::::eeeee::::::ec::::::c     ccccccco::::o     o::::o  n:::::nnnn:::::n 8:::::88888:::::8 
  R::::R     R:::::Re:::::::::::::::::e c:::::c             o::::o     o::::o  n::::n    n::::n8:::::8     8:::::8
  R::::R     R:::::Re::::::eeeeeeeeeee  c:::::c             o::::o     o::::o  n::::n    n::::n8:::::8     8:::::8
  R::::R     R:::::Re:::::::e           c::::::c     ccccccco::::o     o::::o  n::::n    n::::n8:::::8     8:::::8
RR:::::R     R:::::Re::::::::e          c:::::::cccccc:::::co:::::ooooo:::::o  n::::n    n::::n8::::::88888::::::8
R::::::R     R:::::R e::::::::eeeeeeee   c:::::::::::::::::co:::::::::::::::o  n::::n    n::::n 88:::::::::::::88 
R::::::R     R:::::R  ee:::::::::::::e    cc:::::::::::::::c oo:::::::::::oo   n::::n    n::::n   88:::::::::88   
RRRRRRRR     RRRRRRR    eeeeeeeeeeeeee      cccccccccccccccc   ooooooooooo     nnnnnn    nnnnnn     888888888     


====================================================================================
[*] Author: 8omp
[*] Version : 1.0.0
[*] Github  : https://github.com/8omp/
[*] Description: A simple recon script for quick enumeration of a target IP address.
[*] Usage: ./recon8.sh
====================================================================================
EOF
}

print_banner

echo -n "[>] Enter the target IP address: "
read TARGET_IP

if [ -z "$TARGET_IP" ]; then
    echo "[-] No IP address entered. Exiting."
    exit 1
fi

echo ""
echo "[*] Starting recon on $TARGET_IP..."
echo "===================================================================================="

sudo nmap -sS -T4 -p- "$TARGET_IP"

echo "===================================================================================="