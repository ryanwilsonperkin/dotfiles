typeset -U path
path=(/usr/local/bin /usr/local/sbin ~/.rvm/bin $path)
if [ -e /Users/ryan/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/ryan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
