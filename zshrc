autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0}%f'

wal -Rnq

alias ls="exa --icons"
alias ll="ls -l"
alias l="ls"
alias ghr="guix home reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/home-configuration.scm"
alias gsr="sudo -E guix system reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/system.scm"

