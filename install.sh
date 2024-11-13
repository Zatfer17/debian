set -e

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

sudo apt-get update && sudo apt-get upgrade

echo "Installing apps..."

for installer in ./apps/*.sh; do source $installer; done

echo "Done!."

gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

sudo reboot