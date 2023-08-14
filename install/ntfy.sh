wget https://github.com/binwiederhier/ntfy/releases/download/v2.6.2/ntfy_2.6.2_linux_amd64.deb
sudo dpkg -i ntfy_*.deb
sudo systemctl stop ntfy
sudo systemctl disable ntfy
rm ntfy_*.deb
