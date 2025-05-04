#!/bin/bash

# Color Codes
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
cyan="\033[0;36m"
white="\033[1;37m"
reset="\033[0m"

# Typewriter effect function
type() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -ne "${text:$i:1}"
        sleep 0.005
    done
    echo ""
}

# Startup Message
clear
echo -e "$green"
type "Initializing MBK Cyber Tool..."
sleep 0.5
echo -e "$reset"

# MBK ASCII Banner
echo -e "${cyan}"
echo "███╗   ███╗██████╗ ██╗  ██╗"
echo "████╗ ████║██╔══██╗╚██╗██╔╝"
echo "██╔████╔██║██████╔╝ ╚███╔╝ "
echo "██║╚██╔╝██║██╔═══╝  ██╔██╗ "
echo "██║ ╚═╝ ██║██║      ██╔╝ ██╗"
echo "╚═╝     ╚═╝╚═╝      ╚═╝  ╚═╝"
echo -e "${yellow}             >> Hacker Edition v2.beta by MBK <<${reset}"
echo ""

# Installing Required Packages
echo -e "$yellow[+] Installing Required Packages for Termux...$reset"
pkg update -y &> /dev/null
pkg install python -y &> /dev/null
pip install --upgrade pip &> /dev/null
pip install bs4 beautifulsoup4 requests &> /dev/null
echo -e "$green[✓] All Dependencies Installed Successfully!$reset"
sleep 1

# Run install script silently
bash install-sb.sh &> /dev/null

# Animation Effect
echo -e "\n$blue[+] Launching Tool Interface...$reset"
sleep 0.5
echo -ne "."
sleep 0.5
echo -ne "."
sleep 0.5
echo -ne "."
sleep 0.5
clear

# Menu Interface
echo -e "$cyan"
echo "╔═══════════════════════════════════════╗"
echo "║      Welcome to MBK Brute System      ║"
echo "║        Use Responsibly & Wisely       ║"
echo "╚═══════════════════════════════════════╝"
echo -e "$reset"
echo ""
echo -e "$yellow Select From Menu :$reset"
echo ""
echo -e "    ${green}1${reset} : Old Brute Account"
echo -e "    ${green}2${reset} : New Brute Account"
echo -e "    ${green}0${reset} : Exit"
echo ""
read -p $'\033[1;34mMBK@tool > \033[0m' ch

# Logic for selection
case $ch in
    1)
        echo -e "$cyan[~] Launching fb.py...$reset"
        sleep 1
        python fb.py
        ;;
    2)
        echo -e "$cyan[~] Launching fb2.py...$reset"
        sleep 1
        python fb2.py
        ;;
    0)
        echo -e "$red[×] Exiting... See you again, Hacker.$reset"
        exit 0
        ;;
    *)
        echo -e "$red[!] Invalid choice. Try again.$reset"
        ;;
esac
