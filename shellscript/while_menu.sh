#!/bin/bash

# while-menu: a menu driven system information program

DELAY=3

while true; do
	clear
	cat <<- _EOF_
		Please select:

		1. Display System Information
		2. Display Disk Space
		3. Display Home Space Ultilization
		0. Quit

	_EOF_

	read -p "Enter selection [0-3] > "

	if [[ $REPLY =~ ^[0-3]$ ]]; then
		if [[ $REPLY == 1 ]]; then
			echo "Hostname: $HOSTNAME"
			uptime
			sleep $DELAY
			continue
		fi
		if [[ $REPLY == 2 ]]; then
			df -h
			sleep $DELAY
			continue
		fi
		if [[ $REPLY == 3 ]]; then
			if [[ $(id -u ) -eq 0 ]]; then
				echo "Home Space Ultilization (All Users)"
				du -sh /home/*
			else
				echo "Home Space Ultiliation ($USER)"
				du -sh $HOME
			fi
			sleep $DELAY
			continue
		fi
		if [[ $REPLY == 0 ]]; then
			break
		fi
	else
		echo "Invalid Entry"
		sleep $DELAY
	fi
done
