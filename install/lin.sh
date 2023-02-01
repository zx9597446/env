apt --yes install git fish 
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
