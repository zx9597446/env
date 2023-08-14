sudo apt update
sudo apt install --yes git vim curl telnet screen moreutils safe-rm fail2ban unattended-upgrades sshguard

cat <<EOF > "/etc/apt/apt.conf.d/20auto-upgrades"
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Unattended-Upgrade "1";
APT::Periodic::AutocleanInterval "7";
EOF
sudo systemctl enable unattended-upgrades
sudo systemctl restart unattended-upgrades
sudo systemctl status unattended-upgrades

sudo apt install --yes nodejs npm && npm install pm2 -g && pm2 startup
sudo apt install --yes docker docker-compose

sudo apt install --yes jq ripgrep silversearcher-ag bat fd-find exa duf

sudo mv /usr/bin/batcat /usr/bin/bat
sudo mv /usr/bin/fdfind /usr/bin/fd

curl https://getcroc.schollz.com | bash
safe-rm -rf .fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

wget https://github.com/zx9597446/qtunnel/releases/download/v0.0.1/qtunnel-linux-amd64
chmod +x qtunnel-linux-amd64
sudo mv qtunnel-linux-amd64 /usr/local/bin/qtunnel

wget https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz
sudo mv sysz /usr/local/bin/

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | DIR=/usr/local/bin sudo bash

wget https://github.com/binwiederhier/ntfy/releases/download/v2.6.2/ntfy_2.6.2_linux_amd64.deb
sudo dpkg -i ntfy_*.deb
sudo systemctl stop ntfy
sudo systemctl disable ntfy
rm ntfy_*.deb

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.0-amd64.deb
sudo dpkg -i filebeat-*.deb
sudo systemctl stop filebeat
sudo systemctl enable filebeat
rm filebeat-*.deb
