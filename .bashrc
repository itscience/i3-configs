###	last updated - 20.01.16 (~/.bashrc c3) ###

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


##base##

if [ "$0" != "-bash" ] ; then
    . /etc/profile
fi

export EDITOR='nano'
export VISUAL='nano'

##Terminal##

#sudo#
alias SU='sudo -s'

#random wallpaper#
alias wallpaper='feh --randomize --bg-scale ~/Pictures/Wallpaper/*'

#make URxvt changes#
alias makeurxvt='xrdb -merge ~/.Xresources'

# GZdoom to play map wads
alias GZdoom='gzdoom -iwad doom2.wad -file doomrl_arsenal-hud.wad brutal_doom.pk3 musicv4.wad'

# GZdoom to play map wads
alias GZdoom-list='ls ~/.config/gzdoom/1*'

#testing#
#alias urxvt='urxvt -pixmap "`find ~/Downloads -name 'wallpaper.jpg' | sort -R | head -n 1`;style=tiled"'

#ls command preferences#
alias ls='ls -a --color --group-directories-first'

#shorten sudo command#
alias S='sudo'

#mv asks to override#
alias mv="mv -i"

#cp asks to override#
alias cp="cp -i"

#pacaur preferences#
alias pacaur="pacaur --color always"

#mount a disc shortened#
alias mountdvd="sudo mount /dev/sr0 /mount/dvd-rw"

#unmount a disc shortened#
alias umountdvd="umount /mount/dvd-rw"

#ping command preference#
alias ping="ping -c 5 8.8.8.8"

#show all files in folder with details#
alias details="ls -l --block-size=M"

#burn .iso#
alias burn="wodim dev=/dev/sr0 -v -data"
	
##GUI##

#play DVD with VLC#	
alias playdvd="cvlc /dev/sr0"
	
##prompt##
export PS1="\[\033[38;5;12m\]▐\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;12m\]\t [\w]\[$(tput sgr0)\]\[\033[38;5;12m\]\[\033[38;5;12m\]▌\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"
