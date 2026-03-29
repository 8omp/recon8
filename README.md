# Recon8

> A blazing-fast, automated reconnaissance script for CTFs and Penetration Testing.

```text
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
```


![Version](https://img.shields.io/badge/version-1.0.1-blue.svg)
![Bash](https://img.shields.io/badge/language-Bash-green.svg)
![License](https://img.shields.io/badge/license-MIT-red.svg)

## Overview
**Recon8** is an aggressive and highly optimized wrapper script for Nmap, designed to accelerate the initial enumeration phase in CTF environments (like HackTheBox or TryHackMe). 

Instead of running a slow, comprehensive scan on all ports at once, Recon8 uses a **2-Phase Approach**:
1. **Phase 1 (Speed):** A hyper-fast SYN scan (`--min-rate 1000`) across all 65,535 ports to identify open ports in seconds.
2. **Phase 2 (Accuracy):** A targeted, detailed scan (`-sC -sV`) exclusively on the discovered open ports to extract service versions and run default scripts.

## Features
- **Ultra-Fast Scanning:** Tuned specifically for CTF environments.
- **Smart Port Extraction:** Automatically parses Phase 1 results and feeds them into Phase 2.
- **Clean Output Management:** All scan logs are neatly organized in the `output/` directory.
- **Interactive UI:** Features a slick ASCII banner and interactive IP input.
- *(WIP) Automated Web Directory Brute-forcing via Gobuster.*

## Prerequisites
Ensure you have the following tools installed on your system (Kali Linux includes these by default):
- `nmap`
- `gobuster` (Planned)

## Installation & Setup

Clone the repository and set it up so you can run `recon8` from anywhere:

```bash
# 1. Clone the repository into your tools directory
mkdir -p ~/tools
cd ~/tools
git clone [https://github.com/8omp/recon8.git](https://github.com/8omp/recon8.git)

# 2. Navigate into the directory and make the script executable
cd recon8
chmod +x recon8

# 3. Create a symbolic link to run it globally
sudo ln -s ~/tools/recon8/recon8 /usr/local/bin/recon8
```

# Usage

Simply run the command from any directory. The script will prompt you for the target IP.
```Bash
recon8
```

# ⚠️Disclaimer

**AUTHORIZED USE ONLY. The author assumes no liability for any unauthorized use.**