#connect to remote redis
qtunnel -listen=127.1:6379 -backend=remote:6378 -clientmode=true -secret=secret