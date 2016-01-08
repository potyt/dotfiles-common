#
# ~/.zlogin
#

# source base environment
. ~/.env.base

# start gpg-agent if needed
. ~/scripts/gpg-agent-start
. ~/.env.gpg
gpg-flush-cache
gpg-cache-key

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain
ssh-cache-keys

# git annex assistant
git annex assistant --autostart

# coins
bitmonerod --no-igd --hide-my-port --log-file ~/var/log/bitmonero.log --detach
( . ~/.env.noproxy; minerd -a cryptonight -t 3 -o $MINE_XMR_URL -u $MINE_XMR_ADDR -p x -q -B > ~/var/log/minerd.log 2>&1 )

# start mpd if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
