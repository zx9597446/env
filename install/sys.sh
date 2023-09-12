sudo apt-get update
sudo apt-get install --yes git git-extras vim curl wget telnet screen moreutils coreutils safe-rm 
sudo apt-get install --yes jq ripgrep silversearcher-ag retry sysdig
sudo apt-get install --yes nodejs npm && npm install pm2 -g && pm2 startup
sudo apt-get install --yes docker docker-compose

sudo apt-get install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt-get/sources.list.d/caddy-stable.list
sudo apt-get update
sudo apt-get install caddy
sudo systemctl stop caddy
sudo systemctl disable caddy

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.0-amd64.deb
sudo dpkg -i filebeat-*.deb
sudo systemctl stop filebeat
sudo systemctl enable filebeat
rm filebeat-*.deb

retry -- wget https://github.com/binwiederhier/ntfy/releases/download/v2.7.0/ntfy_2.7.0_linux_amd64.deb
sudo dpkg -i ntfy_*.deb
sudo systemctl stop ntfy
sudo systemctl disable ntfy
rm ntfy_*.deb
