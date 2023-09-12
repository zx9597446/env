sudo apt-get install --yes git vim curl wget telnet screen moreutils coreutils safe-rm retry
sudo apt-get install --yes jq ripgrep silversearcher-ag htop glances sysdig

curl https://getcroc.schollz.com | bash

safe-rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

curl https://zyedidia.github.io/eget.sh | bash
sudo mv eget /usr/local/bin

sudo eget zyedidia/eget --to /usr/local/bin
sudo eget zx9597446/kncat --to /usr/local/bin
sudo eget joehillen/sysz --to /usr/local/bin
sudo eget jesseduffield/lazydocker --to /usr/local/bin
sudo eget sharkdp/fd --asset ^musl --to /usr/local/bin
sudo eget ogham/exa --asset ^musl --to /usr/local/bin

echo "alias lzd='lazydocker'" | tee -a $HOME/.bashrc
