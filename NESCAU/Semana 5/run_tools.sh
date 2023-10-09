
#!/bin/bash

# Check if domain is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

# Run amass
amass enum -d $DOMAIN -o amass_$DOMAIN.txt

# Run findomain
findomain -t $DOMAIN -u findomain_$DOMAIN.txt

# Run subfinder
subfinder -d $DOMAIN -o subfinder_$DOMAIN.txt

# Run assetfinder
assetfinder --subs-only $DOMAIN > assetfinder_$DOMAIN.txt
