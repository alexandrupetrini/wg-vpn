#!/bin/bash

echo "# Installing Wireguard"

./full-remove.sh

./install.sh

./add-client.sh

echo "# Wireguard installed"
