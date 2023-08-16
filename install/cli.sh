sudo apt update
sudo apt install --yes git vim curl wget telnet screen moreutils coreutils safe-rm 

sudo apt install --yes jq ripgrep silversearcher-ag bat fd-find exa duf retry

sudo ln -s /usr/bin/batcat /usr/local/bin/bat
sudo ln -s /usr/bin/fdfind /usr/local/bin/fd

curl https://getcroc.schollz.com | bash

wget https://github.com/zx9597446/qtunnel/releases/download/v0.0.1/qtunnel-linux-amd64 && chmod +x qtunnel-linux-amd64
sudo mv qtunnel-linux-amd64 /usr/local/bin/qtunnel

wget https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz
sudo mv sysz /usr/local/bin/

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | DIR=/usr/local/bin sudo bash

safe-rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all
