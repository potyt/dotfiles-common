#
# ~/.zlogin
#

# source base environment
. ~/.env.base

# start gpg-agent if needed
. ~/scripts/gpg-agent-start
. ~/.env.gpg
~/scripts/gpg-cache-key

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain
~/scripts/keychain-cache-keys

# start mpd if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
