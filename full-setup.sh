#!/bin/bash

echo "# Installing Wireguard"

./full-remove.sh

./install-server.sh

./add-client.sh

echo "# Wireguard installed"
