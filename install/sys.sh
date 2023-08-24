sudo apt update
sudo apt install --yes git git-extras vim curl wget telnet screen moreutils coreutils safe-rm 
sudo apt install --yes jq ripgrep silversearcher-ag retry proxychains4
sudo apt install --yes nodejs npm && npm install pm2 -g && pm2 startup
sudo apt install --yes docker docker-compose

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.0-amd64.deb
sudo dpkg -i filebeat-*.deb
sudo systemctl stop filebeat
sudo systemctl enable filebeat
rm filebeat-*.deb

sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
sudo systemctl stop caddy
sudo systemctl disable caddy

retry -- wget --timtout=60 https://github.com/binwiederhier/ntfy/releases/download/v2.6.2/ntfy_2.6.2_linux_amd64.deb
sudo dpkg -i ntfy_*.deb
sudo systemctl stop ntfy
sudo systemctl disable ntfy
rm ntfy_*.deb

