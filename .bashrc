alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
alias home='cd ~;pwd'

function startvm(){
	vboxmanage startvm "$1";
}

function stopvm(){
	vboxmanage controlvm "$1" poweroff
}

function vmaddress(){
	# Getting Mac Address.
	mac=$(vboxmanage showvminfo $1 | grep MAC);
	mac=${mac:34:12};
	#Fetching IP address from "LabNet" Network. 

	echo "Fetching Addresses...";
	sleep 2;
	#echo "MAC Addr:$mac"
	mac_addr=$(vboxmanage dhcpserver findlease --network=LabNet --mac-address=$mac | grep MAC);
	ip_addr=$(vboxmanage dhcpserver findlease --network=LabNet --mac-address=$mac | grep IP);
	echo $mac_addr;
	echo $ip_addr;
}

