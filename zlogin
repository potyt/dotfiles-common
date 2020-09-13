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

# aws completion
aws_zsh_completer=$(which aws_zsh_completer.sh | grep -v "not found")
if [[ -n $aws_zsh_completer ]]; then
    source $aws_zsh_completer
fi

# machine specific
if [ -r ~/.env.$HOSTNAME ]; then
    . ~/.env.$HOSTNAME
fi
if [ -r ~/.zlogin.$HOSTNAME ]; then
    . ~/.zlogin.$HOSTNAME
fi
