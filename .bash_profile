# Honor per-interactive-shell startup file
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

export GUIX_PROFILE=~/.guix-profile
. $GUIX_PROFILE/etc/profile

if [ -e /home/semi/.nix-profile/etc/profile.d/nix.sh ]; then . /home/semi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
