
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
