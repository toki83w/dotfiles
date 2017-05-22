#!/bin/bash

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export XDG_DATA_HOME="/home/luca/.local/share"
#export QT_STYLE_OVERRIDE=fusion

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

#export SVNREPO="https://subversion.assembla.com/svn/anghisoft/trunk"

#alias vga2='xrandr --output VGA2 --mode 1920x1080'

#alias psipc='rdesktop -g 1680x1050 -P -z -x l -d PSICH -u anghinolfi_l pc9347'
#alias pgcad='ssh -Y pg@cad035.psi.ch'
#alias cadcad='ssh -Y cad@cad035.psi.ch'

alias rpi='ssh root@192.168.0.105'

alias myping='ping www.google.com'

alias usbteth='sudo dhcpcd enp0s20u3'

alias getwords='curl -o german_words_android.dat -u luca: ftp://192.168.0.11:20001/german_words.dat'
alias putwords='curl -T german_words.dat -u luca: ftp://192.168.0.11:20001'

# xkill for bspwm
#alias xkill='xkill -frame'

# gtk theme in java
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

# mount NAS
alias NAS='sudo mkdir -p /mnt/NAS; sudo mount -t cifs //192.168.0.1/Music /mnt/NAS/ -o user=admin,password=admin,users'
alias UNAS='sudo umount /mnt/NAS'


PATH=$PATH:~/.config/bspwm/bin

alias tmd='sudo teamviewer --daemon start'


complete -cf sudo

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
