#!/bin/bash

# Check if the script is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update package list and upgrade all software
echo "Updating package list and upgrading software..."
apt update -y && apt upgrade -y

# Install the required packages
echo "Installing required packages..."
apt install -y make darkhttpd recode tar curl

echo "Downloading the tarball file from the specified URL..."
curl -L -O https://github.com/UC-Berkeley-I-School/MIDS-1D-Computing-Basics/website.tar.gz

echo "All done!"
