sudo apt update && sudo apt upgrade --yes

retry -- curl --max-time 60 https://raw.githubusercontent.com/zx9597446/env/main/install/sec.sh | bash -x

retry -- curl --max-time 60 https://raw.githubusercontent.com/zx9597446/env/main/install/sys.sh | bash -x

retry -- curl --max-time 60 https://raw.githubusercontent.com/zx9597446/env/main/install/cli.sh | retry -- bash -ex
