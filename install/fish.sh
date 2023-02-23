sudo apt-add-repository --yes ppa:fish-shell/release-3 && sudo apt update && sudo apt --yes install fish
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)
