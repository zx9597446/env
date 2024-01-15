
test.site {
	root * /var/www
	file_server
	log {
		output file /var/log/caddy/access.log
		format json
	}
}

# goaccess /var/log/caddy/access.log --log-format=CADDY
