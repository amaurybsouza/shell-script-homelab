#!/bin/bash
# ------------------------------------------------------------------------ #
# Script Name:   update-ubuntu-sytems.sh
# Description:   update & upgrade the Ubuntu systems
# Written by:    Amaury
# Maintenance:   Amaury
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./update-ubuntu-sytems.sh
# ------------------------------------------------------------------------ #
# Tested on:
#           Bash 4.2.46
# ------------------------------------------------------------------------ #
# History:
#        v1.0 27/03/2023, Amaury:
#        create the shell script
# ------------------------------------------------------------------------ #
# Required:
#          no action required for this script
# ------------------------------------------------------------------------ #
# Thankfulness:
#             DevOps Homelab
# ------------------------------------------------------------------------ #
#
#
#VARIABLES: -------------------------------------------------------------- #
#          no variables needed yet
#
#CODE -------------------------------------------------------------------- #
# Update package lists
sudo apt update ; apt list --upgradable
sleep 3
#
# List the packages
sudo apt upgrade -y
#
# Remove unnecessary packages
sudo apt  autoremove -y
#
# Clean up package cache
sudo apt clean
#
echo "System update completed!"