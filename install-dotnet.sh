#!/bin/bash

# Update package lists
sudo apt-get update

# Install necessary prerequisites
sudo apt-get install -y wget apt-transport-https

# Download the Microsoft package repository GPG keys
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -o packages-microsoft-prod.deb

# Register the Microsoft package repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Install the .NET SDK
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0

# Verify installation
dotnet --version
