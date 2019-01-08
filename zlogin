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

# machine specific
if [ -r ~/.env.$HOSTNAME ]; then
    . ~/.env.$HOSTNAME
fi
if [ -r ~/.zlogin.$HOSTNAME ]; then
    . ~/.zlogin.$HOSTNAME
fi
