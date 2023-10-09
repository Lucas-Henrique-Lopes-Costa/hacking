
#!/bin/bash

# Update the system
sudo apt-get update -y

# Install necessary dependencies
sudo apt-get install -y git golang go-dep

# Install amass
sudo apt-get install -y amass

# Install findomain
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
sudo mv findomain-linux /usr/local/bin/findomain

# Install subfinder
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

# Install assetfinder
go get -u github.com/tomnomnom/assetfinder
