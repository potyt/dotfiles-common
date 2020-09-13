#
# ~/.zshenv
#

# base environment
. ~/.env.base

# Vim
export MYVIMDIR="$XDG_CONFIG_HOME/vim"
export MYNVIMDIR="$XDG_CONFIG_HOME/nvim"
export _VIMINIT='let $MYVIMRC="$MYVIMDIR/vimrc" | let $MYGVIMRC="$MYVIMDIR/gvimrc" | source $MYVIMRC | source $MYGVIMRC'
export _NVIMINIT='let $MYNVIMRC="$MYNVIMDIR/init.vim" | source $MYNVIMRC'

# standard environment variables
export PAGER=less
export VISUAL=vim
export EDITOR=$VISUAL
export TERMINAL=urxvtc
export XTERM=$TERMINAL
export BROWSER=firefox

# GPG
export GPG_TTY=$(tty)

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

# nvm
export NVM_DIR="$HOME/.nvm"
