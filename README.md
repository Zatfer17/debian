# ubuntu

My vanilla ubuntu setup, largely inspired by [Omakub](https://github.com/basecamp/omakub)

## Setup

Install the dependencies:
```
sudo apt-get update
sudo apt-get install -y git curl gnome-shell-extension-manager pipx
pipx install gnome-extensions-cli
pipx ensurepath
```

Restart the terminal or `source ~/.bashrc` then run:
```
bash install.sh
```