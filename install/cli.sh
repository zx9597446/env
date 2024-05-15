curl https://getcroc.schollz.com | bash

rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

curl https://zyedidia.github.io/eget.sh | bash
sudo mv eget /usr/local/bin

sudo eget zyedidia/eget --to /usr/local/bin
sudo eget binwiederhier/ntfy -a tar.gz --file ntfy --to /usr/local/bin
sudo eget zx9597446/kncat --to /usr/local/bin
sudo eget zx9597446/qtunnel --to /usr/local/bin
sudo eget joehillen/sysz --to /usr/local/bin
sudo eget jesseduffield/lazydocker --to /usr/local/bin
sudo eget sharkdp/fd --asset ^musl --to /usr/local/bin
sudo eget sharkdp/bat --asset ^musl --to /usr/local/bin
sudo eget lsd-rs/lsd --asset ^musl --to /usr/local/bin
sudo eget muesli/duf --asset tar.gz --to /usr/local/bin
sudo eget bootandy/dust --asset ^musl --to /usr/local/bin
sudo eget chmln/sd --asset ^musl --to /usr/local/bin
sudo eget ogham/exa --asset ^musl --to /usr/local/bin
sudo eget dalance/procs --asset ^musl --to /usr/local/bin
sudo eget --all fatedier/frp --to /usr/local/bin
sudo eget ginuerzh/gost --to /usr/local/bin
sudo eget codeskyblue/gohttpserver --to /usr/local/bin
sudo eget svenstaro/miniserve --asset ^musl --to /usr/local/bin
