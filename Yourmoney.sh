#!/bin/bash



multitor() {
if [[ ! -d multitor ]]; then
mkdir multitor;
printf "SOCKSPort 9051\nDataDirectory /var/lib/tor1" > multitor/multitor1
printf "SOCKSPort 9052\nDataDirectory /var/lib/tor2" > multitor/multitor2
printf "SOCKSPort 9053\nDataDirectory /var/lib/tor3" > multitor/multitor3
printf "SOCKSPort 9054\nDataDirectory /var/lib/tor4" > multitor/multitor4
printf "SOCKSPort 9055\nDataDirectory /var/lib/tor5" > multitor/multitor5
fi
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9051\e[0m\n"
tor -f multitor/multitor1 > /dev/null &
tor1=$!
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9052\e[0m\n"
tor -f multitor/multitor2 > /dev/null & 
tor2=$!
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9053\e[0m\n"
tor -f multitor/multitor3 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9054\e[0m\n"
tor -f multitor/multitor4 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9055\e[0m\n"
tor -f multitor/multitor5 > /dev/null &
printf "\e[1;77m[*] Starting...\e[0m\n"
}
while :
do
	rm -rf geckodriver.log
	rm -rf multitor
        sleep 3
	killall -HUP tor
	multitor
	gnome-terminal -x python3 BOT.py
	#termdown 30 | lolcat
	killall -HUP tor
	rm -rf geckodriver.log
	rm -rf multitor
        sleep 1
done





