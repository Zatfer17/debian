echo "2. Installing apps..."

for installer in ./2_apps/*.sh; do source $installer; done