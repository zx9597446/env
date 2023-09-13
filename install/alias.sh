
echo ''
echo 'export PATH=$PATH:$HOME/.local/bin' | tee -a $HOME/.bashrc

echo ''
echo "alias cht='curl cheat.sh/\$*'" | tee -a $HOME/.bashrc
echo "alias ccsd='croc send --code wasduijk \$*'" | tee -a $HOME/.bashrc
echo "alias ccrv='croc --yes --overwrite wasduijk'" | tee -a $HOME/.bashrc
echo "alias pipr='pip install -r requirements.txt'" | tee -a $HOME/.bashrc
echo "alias pipi='pip install \$*'" | tee -a $HOME/.bashrc
echo "alias gst='git status'" | tee -a $HOME/.bashrc
echo "alias gl='git pull'" | tee -a $HOME/.bashrc
echo "alias gp='git push'" | tee -a $HOME/.bashrc
echo "alias gcl='git clone \$*'" | tee -a $HOME/.bashrc
echo "alias lzd='lazydocker'" | tee -a $HOME/.bashrc
echo "alias sc-status='sudo systemctl status \$*'" | tee -a $HOME/.bashrc
echo "alias sc-start='sudo systemctl start \$*'" | tee -a $HOME/.bashrc
echo "alias sc-restart='sudo systemctl restart \$*'" | tee -a $HOME/.bashrc
echo "alias sc-stop='sudo systemctl stop \$*'" | tee -a $HOME/.bashrc
echo "alias sc-disable='sudo systemctl enable \$*'" | tee -a $HOME/.bashrc
echo "alias sc-disable='sudo systemctl disable \$*'" | tee -a $HOME/.bashrc
echo "alias sc-load='sudo systemctl load \$*'" | tee -a $HOME/.bashrc
echo "alias sc-reload='sudo systemctl reload \$*'" | tee -a $HOME/.bashrc
echo "alias sc-list='sudo systemctl list \$*'" | tee -a $HOME/.bashrc
echo "alias sc-log='sudo journalctl -xefu \$*'" | tee -a $HOME/.bashrc
