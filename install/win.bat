scoop install clink
scoop install clink-completions
scoop install curl
scoop install googlechrome
scoop install firefox
scoop install everything
scoop install powertoys
scoop install windows-terminal
scoop install vscode
scoop install sysinternals
scoop install fzf
scoop install ag
scoop install croc
scoop install jq
scoop install mremoteng
scoop install snipaste
scoop install 7zip

clink set clink.autostart doskey /macrofile=%userprofile%\doskey.macros
curl -o %localappdata%\clink\fzf.lua https://raw.githubusercontent.com/chrisant996/clink-fzf/main/fzf.lua
