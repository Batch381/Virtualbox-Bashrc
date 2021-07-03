# Virtualbox-Bashrc

ongoing project of mine. 
simply to add to .bashrc file. 

simplifying vboxmanage commands for ease for the VM server. 
this is to help use commands for virtualbox easier through the terminal as my server has no GUI.
the VMs I am spinning up are from vulnhub. a simple machine with vulnerabilties which I do not need to see so I will be running them "Headless" 

first you will need to install and import or install some vms.
< sudo apt update && sudo apt install virtualbox > 

However, I want to be able to find out what IP my vms are on my NAT network called "LabNet" so if you are going to use my script. you'll need to either edit the code and change it to you NAT network name. or change the name of your NAT network to "LabNet"

I have tried to make everything else as universal as I can.
you can simply copy this code and add it into your ~/.bashrc file. 

once you have added this. you can then use: 

* startvm name-of-vm      This starts the vm (headless)
* stopvm name-of-vm       powers off the vm
* vmaddress name-of-vm    Finds the MAC and IP address of the VM (on NAT Network "LabNet")

soon to be adding more. 
