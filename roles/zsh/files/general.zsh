export LANG=en_US.UTF-8
alias ls="ls -aG"
alias t="tig"
alias ta="tig --all"
alias g="git"
alias xclip="xclip -selection c"
alias root="cd $(git rev-parse --show-toplevel)"
export PATH=$PATH:~/tools
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.yarn/bin
export HOST=${HOST}
setopt correct
function chpwd() { ls }
function setdefaulteditor() {
  if [ "$TERM_PROGRAM" = "vscode" ]; then
    export EDITOR="code -w"
  else
    export EDITOR="vim"
  fi
}
setopt auto_pushd
setopt pushd_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setdefaulteditor

