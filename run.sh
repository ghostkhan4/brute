#!/bin/bash

# Define Colors
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
cyan="\033[0;36m"
white="\033[1;37m"
reset="\033[0m"

# Typewriter Effect Function
type() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -ne "${text:$i:1}"
        sleep 0.004
    done
    echo ""
}

# Banner Function
ghost_banner() {
clear
echo -e "${cyan}"
echo "   ▄████  ▒█████   ██▀███   ▒█████   ████████ "
echo "  ██▒ ▀█▒▒██▒  ██▒▓██ ▒ ██▒▒██▒  ██▒ ▒▒ ▒ ▒▒"
echo " ▒██░▄▄▄░▒██░  ██▒▓██ ░▄█ ▒▒██░  ██▒   ▒ ▒▒ "
echo " ░▓█  ██▓▒██   ██░▒██▀▀█▄  ▒██   ██░ ░ ░ ▒  "
echo " ░▒▓███▀▒░ ████▓▒░░██▓ ▒██▒░ ████▓▒░   ░ ░  "
echo "  ░▒   ▒ ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░▒░▒░         "
echo "   ░   ░   ░ ▒ ▒░   ░▒ ░ ▒░  ░ ▒ ▒░   GHOST "
echo " ░ ░   ░ ░ ░ ░ ▒    ░░   ░ ░ ░ ░ ▒    SYSTEM"
echo "       ░     ░ ░     ░         ░ ░         "
echo -e "${yellow}             [ Hacker's Shadow Toolkit ]${reset}"
echo ""
}

# Loading Animation
loading_animation() {
    echo -e "$blue[+] Launching Ghost Interface...$reset"
    for i in {1..3}; do echo -ne "."; sleep 0.4; done
    echo ""
    sleep 0.5
    clear
}
git clone https://github.com/thescriptkiddie07/Facebook-BruteForce-Attack/blob/main/passwords.txt
# Installation
echo -e "$green[~] Setting up environment...$reset"
pkg update -y &>/dev/null
pkg install python python2 -y &>/dev/null
pip install --upgrade pip &>/dev/null
pip install bs4 beautifulsoup4 requests &>/dev/null
echo -e "$green[✓] Dependencies installed$reset"

# Run install script if exists
if [ -f install-sb.sh ]; then
    bash install-sb.sh &>/dev/null
fi

# Show Banner
ghost_banner
sleep 1

# Menu Box
echo -e "$cyan"
echo "╔═══════════════════════════════════════╗"
echo "║        Welcome to Ghost System        ║"
echo "║   The Shadows Are Watching You...     ║"
echo "╚═══════════════════════════════════════╝"
echo -e "$reset"
echo ""

# Show Options
echo -e "$yellow Select From Menu :$reset"
echo ""
echo -e "    ${green}1${reset} : Old Brute Account"
echo -e "    ${green}2${reset} : New Brute Account"
echo -e "    ${green}0${reset} : Exit"
echo ""

# Read Choice
read -p $'\033[1;34mGhost@tool > \033[0m' ch

# Load Animation
loading_animation
ghost_banner

# Case Logic
case $ch in
    1)
        echo -e "$cyan[~] Executing fb.py with Python2...$reset"
        sleep 1
        python2 fb.py
        ;;
    2)
        echo -e "$cyan[~] Executing fb2.py with Python2...$reset"
        sleep 1
        python2 fb2.py
        ;;
    0)
        echo -e "$red[×] Terminating Session. Goodbye, Shadow.$reset"
        exit 0
        ;;
    *)
        echo -e "$red[!] Invalid selection. Try again.$reset"
        ;;
esac
