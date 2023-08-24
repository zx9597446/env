sudo apt update && sudo apt upgrade --yes

curl https://raw.githubusercontent.com/zx9597446/env/main/install/sec.sh | bash -x

curl https://raw.githubusercontent.com/zx9597446/env/main/install/sys.sh | bash -x

curl --retry 100 --max-time 60 https://raw.githubusercontent.com/zx9597446/env/main/install/cli.sh | retry -- bash -ex
