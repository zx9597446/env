sudo cp /etc/hosts /etc/hosts.bak
curl https://gitlab.com/ineo6/hosts/-/raw/master/next-hosts | sudo tee -a /etc/hosts
