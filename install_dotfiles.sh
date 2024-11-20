echo "3. Installing dotfiles..."

for file in ./3_dotfiles/.config/; do yes | cp $file ~/.config; done
for file in ./3_dotfiles/.*; do yes | cp $file ~/; done