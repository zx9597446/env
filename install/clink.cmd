scoop install clink clink-completions

clink set clink.autostart doskey /macrofile=%userprofile%\doskey.macros
curl -o %localappdata%\clink\fzf.lua https://raw.githubusercontent.com/chrisant996/clink-fzf/main/fzf.lua
curl -o %localappdata%\clink\more-clink-completions.lua https://github.com/sebthom/more-clink-completions/releases/download/latest-v2/more-clink-completions.lua

clink set fzf.default_bindings true
clink set cmd.auto_answer answer_yes

clink autorun install
