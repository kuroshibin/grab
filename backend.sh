#!/bin/bash
#A plug n' play kind of backend
#Just enter the phone number and the delay
#
#Idk if this is easier but i want to try bash programming

#Text colors
white='\033[0m'
black='\033[30m'
green='\033[32m'
red='\033[31m'
yellow='\033[93m'

display_usage () {
  echo -e "${green}spammer.py${white} CLI backend by ${green}Wattana Gaming${white}"
  echo "There's no need for arguments. Just run this script and it will ask you for the \
  victim's phone number"
  echo ""
  #Yo dawg this part is still Work In Progress so come back later if you're not
  #A programmer
  #  echo "Country code reference"
  #  echo -e "        ${green}66${white} : ${green}Thailand${white}(Replace 0 with the country code)"
  }

if [[ ( $1 == "--help") ||  $1 == "-h" ]]
  then
  	display_usage
  	exit 0
fi

if [ -z "$1" ]
  then
    echo -e "spammer.py CLI backend by ${green}Wattana Gaming${white}"
    read -p "Victim's phone number: " phone_number
    read -p "Delay time in second(s). 30 for maximum savage level: " delay
    echo ""
    echo -e "${green}Thanks4Using!"
    python spammer.py ${phone_number} --delay ${delay}
fi
