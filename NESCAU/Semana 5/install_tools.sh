
#!/bin/bash

# Update the system
sudo apt-get update -y

# Install amass
sudo apt-get install -y amass

# Install findomain
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain

# Install subfinder
sudo apt-get install -y subfinder

# Install assetfinder
sudo apt-get install -y assetfinder

# Install colorized-logs
sudo apt install colorized-logs
