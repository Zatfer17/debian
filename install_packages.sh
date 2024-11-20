echo "1. Installing packages..."

for installer in ./1_packages/*.sh; do source $installer; done