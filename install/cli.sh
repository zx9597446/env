sudo apt update
sudo apt install --yes git curl telnet moreutils safe-rm fail2ban unattended-upgrades apt-listchanges
sudo apt install --yes nodejs npm && npm install pm2 -g && pm2 startup
sudo apt install --yes jq ripgrep silversearcher-ag bat fd-find exa duf

curl https://getcroc.schollz.com | bash
safe-rm -rf .fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

wget https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz
sudo mv sysz /usr/local/bin/

wget https://github.com/zx9597446/qtunnel/releases/download/v0.0.1/qtunnel-linux-amd64
chmod +x qtunnel-linux-amd64
sudo mv qtunnel-linux-amd64 /usr/local/bin/qtunnel

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | DIR=/usr/local/bin sudo bash