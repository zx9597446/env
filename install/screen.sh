sudo apt-get install -y screen
tee -a ~/.screenrc << END
hardstatus string "%h"
caption always "%{= kw} %-w%{= wk}%n*%t%{-}%+w%{= kw} %=%d %M %0c %{g}%H%{-}"
END
