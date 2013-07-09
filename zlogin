#
# ~/.zlogin
#

# set up $TMPDIR on tmpfs
rm -rf ${TMPDIR%/}; mkdir -p /tmp/pot; ln -s /tmp/pot ${TMPDIR%/}

# start gpg-agent if needed
. ~/scripts/gpg-start-agent
. ~/.gpgenv
