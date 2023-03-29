scoop install clink clink-completions curl googlechrome firefox everything powertoys windows-terminal fzf ag croc mremoteng jq snipaste 7zip cpu-z gpu-z git-credential-manager

clink set clink.autostart doskey /macrofile=%userprofile%\doskey.macros
curl -o %localappdata%\clink\fzf.lua https://raw.githubusercontent.com/chrisant996/clink-fzf/main/fzf.lua
clink set fzf.default_bindings true
clink set cmd.auto_answer answer_yes