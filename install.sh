set -e

sudo apt-get update

echo "Cloning the repo..."
rm -rf ~/Documents/ubuntu
git clone https://github.com/Zatfer17/ubuntu.git ~/Documents/ubuntu >/dev/null
cd ~/Documents/ubuntu

echo "Installation starting..."

echo "1. Installing packages..."

for installer in ./1_packages/*.sh; do source $installer; done

echo "2. Installing apps..."

for installer in ./2_apps/*.sh; do source $installer; done

echo "3. Installing dotfiles..."

for file in ./3_dotfiles/.config/; do yes | cp $file ~/.config; done
for file in ./3_dotfiles/.*; do yes | cp $file ~/; done

echo "4. Installing wallpapers..."

for picture in ./4_wallpapers/*.png; do cp $picture ~/Pictures/; done

echo "Done!."

sudo reboot