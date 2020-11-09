#!/bin/bash

if [[ $(id -u) -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

echo "# Installing Wireguard"

./full-remove.sh

./install-server.sh

./add-client.sh

echo "# Wireguard installed"
