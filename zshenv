#
# ~/.zshenv
#

# base environment
. ~/.env.base

# Vim
export MYVIMDIR="$XDG_CONFIG_HOME/vim"
export VIMINIT='let $MYVIMRC="$MYVIMDIR/vimrc" | let $MYGVIMRC="$MYVIMDIR/gvimrc" | source $MYVIMRC | source $MYGVIMRC'

# GPG
export GPG_TTY=$(tty)

# standard environment variables
export PAGER=less
export VISUAL=vim
export EDITOR=$VISUAL
export TERMINAL=urxvtc
export XTERM=$TERMINAL
export BROWSER=chromium

# zsh related
export HISTFILE="${TMPDIR}/zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
export READNULLCMD="${PAGER}"

# less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESSHISTFILE="${TMPDIR}/lesshst"
export LESS=' -R'

# urxvt
export RXVT_SOCKET="${TMPDIR}/urxvt-`hostname`"

# par
export PARINIT="rTbgqR B=.,?_A_a Q=_s>|"

# aws completion
aws_zsh_completer=$(which aws_zsh_completer.sh)
if [[ -n $aws_zsh_completer ]]; then
    source $aws_zsh_completer
fi
