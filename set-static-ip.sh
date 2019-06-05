#!/bin/bash -xe

#PROVISIONING_INTERFACE='ens3'
#PROVISIONING_IP='172.22.0.2'

if [ -z "$PROVISIONING_INTERFACE" ]; then
    echo "ERROR: PROVISIONING_INTERFACE environment variable unset."
    exit 1
fi
if [ -z "$PROVISIONING_IP" ]; then
    echo "ERROR: PROVISIONING_IP environment variable unset."
    exit 1
fi

ip dev $PROVISIONING_INTERFACE set $PROVISIONING_IP
