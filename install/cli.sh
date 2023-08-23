sudo apt update
sudo apt install --yes git git-extras vim curl wget telnet screen moreutils coreutils safe-rm 
sudo apt install --yes jq ripgrep silversearcher-ag retry

safe-rm -rf ~/.fzf && retry -- git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
retry -- bash ~/.fzf/install --all

retry -- curl https://getcroc.schollz.com | retry bash

retry -- wget --timeout=30 https://github.com/zx9597446/qtunnel/releases/download/v0.0.1/qtunnel-linux-amd64 && chmod +x qtunnel-linux-amd64 && sudo mv qtunnel-linux-amd64 /usr/local/bin/qtunnel

retry -- wget --timeout=30 https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz && sudo mv sysz /usr/local/bin/

retry -- curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | DIR=/usr/local/bin sudo retry bash
