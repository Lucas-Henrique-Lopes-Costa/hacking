
#!/bin/bash

# Check if domain is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

# create folder
mkdir $DOMAIN

# Run amass
amass enum -d $DOMAIN -o $DOMAIN/amass_$DOMAIN.ansi

# save the txt
cat $DOMAIN/amass_$DOMAIN.ansi | ansi2txt > $DOMAIN/amass_$DOMAIN.txt

# Run findomain
findomain -t $DOMAIN -u $DOMAIN/findomain_$DOMAIN.txt

# Run subfinder
subfinder -d $DOMAIN -o $DOMAIN/subfinder_$DOMAIN.txt

# Run assetfinder
assetfinder --subs-only $DOMAIN > $DOMAIN/assetfinder_$DOMAIN.txt
