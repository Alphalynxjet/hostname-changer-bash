#!/bin/bash

# Prompt for the new hostname
read -p "Enter the new hostname: " new_hostname

# Change the hostname
sudo hostnamectl set-hostname "$new_hostname"

# Update the /etc/hosts file
sudo sed -i "s/127.0.0.1.*/127.0.0.1\t$new_hostname localhost/g" /etc/hosts

echo "Hostname changed to $new_hostname. Rebooting now."

sudo reboot
