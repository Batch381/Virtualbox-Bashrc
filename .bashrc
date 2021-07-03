alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
alias home='cd ~;pwd'

function startvm(){
	vboxmanage startvm "$1" --type headless;
}

function stopvm(){
	vboxmanage controlvm "$1" poweroff
}

function vmaddress(){
	# Getting Mac Address.
	# VM needs to be running! 
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
function showvms(){
	vboxmanage list vms;
}
function showvmsrunning(){
	vboxmanage list runningvms;
}

