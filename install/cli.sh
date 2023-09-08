sudo apt install --yes git vim curl wget telnet screen moreutils coreutils safe-rm retry
sudo apt install --yes jq ripgrep silversearcher-ag htop glances sysdig fd-find
sudo ln -s $(which fdfind) /usr/local/bin/fd

curl https://getcroc.schollz.com | bash

safe-rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

wget https://github.com/zx9597446/qtunnel/releases/latest/download/qtunnel && chmod +x qtunnel && sudo mv qtunnel /usr/local/bin/qtunnel

wget https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz && sudo mv sysz /usr/local/bin/

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
echo 'export PATH=$PATH:$HOME/.local/bin' | tee -a $HOME/.bashrc
echo "alias lzd='lazydocker'" | tee -a $HOME/.bashrc
