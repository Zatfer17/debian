set -e

sudo apt-get update

echo "Installation starting..."

echo "1. Installing packages..."

for installer in ./1_packages/*.sh; do source $installer; done

echo "2. Installing apps..."

for installer in ./2_apps/*.sh; do source $installer; done

echo "Done!."

sudo reboot