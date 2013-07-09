#
# ~/.zlogin
#

# set up $TMPDIR on tmpfs
rm -rf ${TMPDIR%/}; mkdir -p /tmp/pot; ln -s /tmp/pot ${TMPDIR%/}

# start gpg-agent if needed
if [[ -z $GPG_AGENT_PID ]] || ! kill -0 $GPG_AGENT_PID 2>/dev/null; then
    eval "$(gpg-agent --daemon --enable-ssh-support --write-env-file "$GPG_AGENT_ENV_FILE")"
    . ~/scripts/gpg_agent_env.sh
fi
