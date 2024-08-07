#!/bin/bash

# Install the .NET SDK
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0

# Install ASP.NET Core Runtime
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-8.0

# Verify installation
dotnet --version
