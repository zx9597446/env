sudo apt-add-repository -y ppa:fish-shell/release-3 && sudo apt update && sudo apt -y install fish
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

curl https://getcroc.schollz.com | bash

bash <(curl https://bash.ooo/nami.sh)
nami install jinbe joker zoro brook

apt update && apt install -y nodejs npm && npm install pm2 -g && pm2 startup
