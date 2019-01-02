#!/bin/sh
IP_ADDR=$1

if [ -z "${IP_ADDR}" ]; then 
  echo "No IP address passed in. Usage:"
  echo "./auth-script.sh x.x.x.x"
  exit 1
fi

echo "Attempting to authorize TV on $IP_ADDR"

python lgtv.py auth $IP_ADDR
