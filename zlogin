#
# ~/.zlogin
#

# source base environment
. ~/.env.base

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain

# start gpg-agent if needed
. ~/scripts/gpg-agent-start
. ~/.env.gpg
