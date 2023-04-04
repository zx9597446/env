# install fish
sudo apt-add-repository -y ppa:fish-shell/release-3 && sudo apt update && sudo apt -y install fish
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install ankitsumitg/docker-fish-completions
