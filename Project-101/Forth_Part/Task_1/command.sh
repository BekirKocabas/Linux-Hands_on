#!/bin/bash
IP=$(grep -i privateipadress info.json | head -1 | cut -d'"' -f4)
echo $IP

sed -i 's/ec-private_ip/$IP/' terraform.tf