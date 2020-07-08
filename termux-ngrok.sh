#!/bin/dash
# Desenvolvido por Tchelo Noob
atualizar='\033[1;32m'
#echo "Идёт установка..."
#apt update && upgrade -y
#apt install -y wget
clear
k='\033[01;32m'
echo
echo "${k}████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo "${k}╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo "${k}   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo "${k}   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo "${k}   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo "${k}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo "${k} /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/";
echo
echo "Install Ngrok [Y/n]"
read opcao
case $opcao in
y)
echo
echo "Installing Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Unknown architecture"
esac

curl -L "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -o ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo "type 'ngrok http 8080' to start ngrok."
#echo "И не забудь подписаться на канал Termux Guide"
;;

n)
clear
echo "Ngrok is not installed :("
echo
esac



