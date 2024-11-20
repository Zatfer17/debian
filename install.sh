set -e

sudo apt-get update

echo "Installation starting..."

yes | source install_packages.sh
yes | source install_apps.sh
yes | source install_dotfiles.sh
yes | source install_wallpapers.sh

echo "Done!."

sudo reboot