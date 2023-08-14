sudo apt update && sudo apt upgrade
sudo apt install --yes git curl telnet moreutils safe-rm fail2ban unattended-upgrades

cat <<EOF > "/etc/apt/apt.conf.d/20auto-upgrades"
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Unattended-Upgrade "1";
APT::Periodic::AutocleanInterval "7";
EOF
sudo systemctl enable unattended-upgrades
sudo systemctl restart unattended-upgrades
sudo systemctl status unattended-upgrades

sudo touch /etc/fail2ban/jail.local
cat <<EOF > "/etc/fail2ban/jail.local"
[sshd]
enabled = true
logpath = /var/log/auth.log
maxretry = 5
findtime  = 60m
bantime   = 60m
EOF
sudo systemctl enable fail2ban
sudo systemctl restart fail2ban
sudo systemctl status fail2ban

sudo apt install --yes nodejs npm && npm install pm2 -g && pm2 startup
sudo apt install --yes jq ripgrep silversearcher-ag bat fd-find exa duf

sudo mv /usr/bin/batcat /usr/bin/bat
sudo mv /usr/bin/fdfind /usr/bin/fd

curl https://getcroc.schollz.com | bash
safe-rm -rf .fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install --all

wget https://github.com/joehillen/sysz/releases/latest/download/sysz && chmod +x sysz
sudo mv sysz /usr/local/bin/

wget https://github.com/zx9597446/qtunnel/releases/download/v0.0.1/qtunnel-linux-amd64
chmod +x qtunnel-linux-amd64
sudo mv qtunnel-linux-amd64 /usr/local/bin/qtunnel

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | DIR=/usr/local/bin sudo bash
