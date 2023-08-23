curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /etc/apt/trusted.gpg.d/mongodb-server-7.0.gpg --dearmor

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

sudo apt-get update && sudo apt-get install -y mongodb-org
