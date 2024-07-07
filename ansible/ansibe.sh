#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install the necessary software-properties-common package
sudo apt-get install -y software-properties-common

# Add Ansible's official PPA (Personal Package Archive)
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt-get install -y ansible

# Verify the installation
ansible --version

echo "Ansible has been installed successfully."
