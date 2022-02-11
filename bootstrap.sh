#!/bin/sh

echo -e "1) desktop\n2) thinkbook"
while :
do
	echo -n "Which host do you want to configure? "
	read HOST_NUMBER
	
	case $HOST_NUMBER in	
		1)
			NAME="ap-desktop"
			break
			;;			
		2)
			NAME="thinkbook"
			break
			;;			
		*)
			echo -n "Unknown value. "
			;;
	esac
done

echo "Cleaning /etc/nixos"
sudo rm /etc/nixos/*
echo "Copying configuration.nix to /etc/nixos"
sudo cp $HOME/Dotfiles/nixos/configuration.nix /etc/nixos
echo -e "Copying $NAME folder to /etc/nixos"
sudo cp $HOME/Dotfiles/nixos/$NAME/* /etc/nixos
