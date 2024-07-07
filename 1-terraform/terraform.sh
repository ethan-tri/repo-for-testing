#!/bin/bash

# Define the Terraform version to install
TERRAFORM_VERSION="1.9.1"

# Update the package list and install necessary dependencies
sudo apt-get update -y
sudo apt-get install -y wget unzip

# Download Terraform binary
wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Unzip the Terraform binary
unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Move the Terraform binary to /usr/local/bin
sudo mv terraform /usr/local/bin/

# Verify the installation
terraform --version

# Clean up the downloaded zip file
rm "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

echo "Terraform ${TERRAFORM_VERSION} has been installed successfully."
