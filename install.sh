set -e

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git

echo "Installing desktop tools..."

for installer in ./components/*.sh; do source $installer; done

gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

sudo reboot