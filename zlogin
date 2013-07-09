#
# ~/.zlogin
#

# set up $TMPDIR on tmpfs
rm -rf ${TMPDIR%/}; mkdir -p /tmp/pot; ln -s /tmp/pot ${TMPDIR%/}

# start keychain if needed
. ~/scripts/keychain-start
. ~/.env.keychain

# start gpg-agent if needed
. ~/scripts/gpg-agent-start
. ~/.env.gpg
