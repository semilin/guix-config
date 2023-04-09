if status is-interactive
    function fish_prompt
        echo -n (set_color green)(date +%H:%M) (set_color blue)(pwd)(set_color normal)' $ '
    end

    wal --theme base16-tomorrow-night -nq &

    set -x EDITOR "emacsclient -c"
    set -x LD_LIBRARY_PATH $HOME/.guix-profile/lib
    set -x PKG_CONFIG_PATH $HOME/.guix-profile/lib/pkgconfig
    set -x CC clang
    set -x PATH $PATH $HOME/.cargo/bin

    alias ls "exa --icons"
    alias ll "ls -l"
    alias l "ls"
    alias e $EDITOR
    alias ghr "guix home reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/home.scm"
    alias gsr "sudo -E guix system reconfigure -L /home/semi/code/guix-config/custom/ /home/semi/code/guix-config/system.scm"

end
