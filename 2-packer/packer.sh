#!/bin/bash

# Define the Packer version to install
PACKER_VERSION="1.11.1"

# Update the package list and install necessary dependencies
sudo apt-get update -y
sudo apt-get install -y wget unzip

# Download Packer binary
wget "https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip"

# Unzip the Packer binary
unzip "packer_${PACKER_VERSION}_linux_amd64.zip"

# Move the Packer binary to /usr/local/bin
sudo mv packer /usr/local/bin/

# Verify the installation
packer --version

# Clean up the downloaded zip file
rm "packer_${PACKER_VERSION}_linux_amd64.zip"

echo "Packer ${PACKER_VERSION} has been installed successfully."
