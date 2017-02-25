#
# ~/.zlogin
#

# source base environment
. ~/.env.base

# cycle gpg agent
gpg-flush-cache
gpg-cache-key

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain
ssh-cache-keys

# coins
( . ~/.env.noproxy; minerd -a cryptonight -t 8 -o $MINE_XMR_URL -u $MINE_XMR_ADDR -p x -B >> ~/var/log/minerd.log 2>&1 )

# start mpd if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
