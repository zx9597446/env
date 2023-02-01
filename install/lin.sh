apt --yes install git fish 
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl https://raw.githubusercontent.com/junegunn/fzf/master/install | bash
