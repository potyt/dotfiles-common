#
# ~/.zlogin
#

# source base environment
. ~/.env.base

# start gpg-agent if needed
. ~/scripts/gpg-agent-start
. ~/.env.gpg
~/scripts/gpg-flush-cache
~/scripts/gpg-cache-key

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain
~/scripts/keychain-cache-keys

# git annex assistant
git annex assistant --autostart

# start mpd if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
