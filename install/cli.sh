sudo apt update
sudo apt install --yes git vim curl wget telnet screen moreutils coreutils safe-rm 
sudo apt install --yes jq ripgrep silversearcher-ag retry

safe-rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

curl https://getcroc.schollz.com | bash
