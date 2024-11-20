set -e

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

sudo apt update && sudo apt upgrade

echo "1. Installing packages..."

for installer in ./1_packages/*.sh; do source $installer; done

echo "2. Installing apps..."

for installer in ./2_apps/*.sh; do source $installer; done

echo "4. Installing wallpapers..."

for picture in ./4_wallpapers; do mv $picture ~/Pictures/$picture

echo "Done!."

gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

sudo reboot