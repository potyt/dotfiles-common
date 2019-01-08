#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# set color temperature
/usr/bin/xcalib -d :0 /usr/share/color/icc/colord/Gamma5000K.icc

# custom host xmodmap
rm -f ~/.Xmodmap; ln -s .Xmodmap.`hostname` .Xmodmap

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# set up display
display-layout

# start a session
DEFAULT_SESSION=i3
case $1 in
i3)
	exec i3
	;;
e17)
	exec e17
	;;
twm)
	exec twm
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac
