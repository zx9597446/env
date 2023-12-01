sudo apt-get install --yes git vim curl wget telnet screen moreutils coreutils safe-rm retry ngrep tree dos2unix
sudo apt-get install --yes jq ripgrep silversearcher-ag htop glances sysdig

npm install pm2@latest -g && pm2 completion install
pm2 install pm2-logrotate

curl https://getcroc.schollz.com | bash

rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

curl https://zyedidia.github.io/eget.sh | bash
sudo mv eget /usr/local/bin

sudo eget zyedidia/eget --to /usr/local/bin
sudo eget binwiederhier/ntfy -a tar.gz --file ntfy --to /usr/local/bin
sudo eget zx9597446/kncat --to /usr/local/bin
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
sudo eget fatedier/frp --to /usr/local/bin

sudo apt-get install -y screen
tee -a ~/.screenrc << END
hardstatus string "%h"
caption always "%{= kw} %-w%{= wk}%n*%t%{-}%+w%{= kw} %=%d %M %0c %{g}%H%{-}"
END

echo 'export PATH=$PATH:$HOME/.local/bin' | tee -a $HOME/.bashrc
echo 'export PATH=$PATH:$HOME/go/bin' | tee -a $HOME/.bashrc

echo "alias cht='curl cheat.sh/\$*'" | tee -a $HOME/.bash_aliases
echo "alias ccsd='croc send --code wasduijk \$*'" | tee -a $HOME/.bash_aliases
echo "alias ccrv='croc --yes --overwrite wasduijk'" | tee -a $HOME/.bash_aliases
echo "alias pipr='pip install -r requirements.txt'" | tee -a $HOME/.bash_aliases
echo "alias pipi='pip install \$*'" | tee -a $HOME/.bash_aliases
echo "alias gst='git status'" | tee -a $HOME/.bash_aliases
echo "alias gl='git pull'" | tee -a $HOME/.bash_aliases
echo "alias gp='git push'" | tee -a $HOME/.bash_aliases
echo "alias gcl='git clone \$*'" | tee -a $HOME/.bash_aliases
echo "alias lzd='lazydocker'" | tee -a $HOME/.bash_aliases
echo "alias sc-status='sudo systemctl status \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-start='sudo systemctl start \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-restart='sudo systemctl restart \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-stop='sudo systemctl stop \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-disable='sudo systemctl enable \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-disable='sudo systemctl disable \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-load='sudo systemctl load \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-reload='sudo systemctl reload \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-list='sudo systemctl list \$*'" | tee -a $HOME/.bash_aliases
echo "alias sc-log='sudo journalctl -xefu \$*'" | tee -a $HOME/.bash_aliases
