sudo apt-get update
sudo apt-get install --yes unzip git git-extras vim curl wget telnet screen moreutils coreutils safe-rm
sudo apt-get install --yes jq ripgrep silversearcher-ag retry sysdig
sudo apt-get install --yes git vim curl wget telnet screen moreutils coreutils safe-rm retry ngrep tree dos2unix
sudo apt-get install --yes jq ripgrep silversearcher-ag htop glances sysdig

sudo apt-get install --yes nodejs npm
sudo npm install pm2@latest -g 
pm2 completion install
pm2 install pm2-logrotate

sudo apt-get install --yes docker docker-compose

sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
sudo systemctl stop caddy
sudo systemctl disable caddy

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.0-amd64.deb
sudo dpkg -i filebeat-*.deb
sudo systemctl stop filebeat
sudo systemctl enable filebeat
rm filebeat-*.deb
