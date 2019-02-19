export LANG=ja_JP.UTF-8
alias -g B='`git branch | peco | sed -e "s/^\*[ ]*//g"`'
alias ls="ls -a"
alias t="tig"
alias ta="tig --all"
setopt correct
function chpwd() { ls }
setopt auto_pushd
setopt pushd_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space