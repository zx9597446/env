pm2 start ntfy -- sub topic 'ls *.log -Art | tail -n 2 | xargs croc send -c topic'
