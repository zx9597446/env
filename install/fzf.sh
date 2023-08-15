git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all
pushd ~/.fzf && git pull && ./install --all && popd
