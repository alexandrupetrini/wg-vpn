echo "# Removing"

if [[ $(id -u) -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

wg-quick down wg0
systemctl stop wg-quick@wg0
systemctl disable wg-quick@wg0

yes | apt autoremove wireguard wireguard-dkms wireguard-tools
#yes | apt autoremove software-properties-common
yes | apt update

rm -rf /etc/wireguard

echo "# Removed"
