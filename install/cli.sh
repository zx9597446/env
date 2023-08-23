sudo apt update

safe-rm -rf ~/.fzf && retry -- git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

retry -- curl https://getcroc.schollz.com | bash
