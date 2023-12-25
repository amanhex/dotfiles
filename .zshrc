export ZSH="$HOME/.config/.oh-my-zsh"
ZSH_THEME="alanpeabody"
export ZSH_COMPDUMP="$HOME/.cache/.zcompdump-$HOST"
plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:~/.local/bin/
export PATH=$PATH:/usr/lib/jvm/default/bin
~/.local/bin/pywal
alias autoremove='yay -Yc'
alias removecache='sudo paccache -rk3'
alias lf='lfrun'
alias ua-drop-caches='sudo paccache -rk3; yay -Sc --aur --noconfirm'
alias ua-update-all='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && ua-drop-caches \
      && yay -Syyu --noconfirm'
alias btop='btop --utf-force'
alias umnt='jmtpfs ~/mnt'
