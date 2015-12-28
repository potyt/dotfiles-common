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

# start bitcoin daemons
electrum daemon start

# start mpd if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
