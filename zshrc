autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0}%f'

wal --theme base16-tomorrow-night -nq

export EDITOR="emacsclient -c"
export LD_LIBRARY_PATH=$HOME/.guix-profile/lib
export PKG_CONFIG_PATH=~/.guix-profile/lib/pkgconfig
export CC=clang
export PATH=$PATH:$HOME/.cargo/bin

alias ls="exa --icons"
alias ll="ls -l"
alias l="ls"
alias e=$EDITOR
alias ghr="guix home reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/home.scm"
alias gsr="sudo -E guix system reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/system.scm"

