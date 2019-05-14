# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
export SCRIPTSRUNHISTORY=$SCRIPTSRUNHISTORY:profile
umask 022

#[ ! -d /tmp/cache ] && mkdir -p /tmp/cache/npm
#[ ! -L ~/.gvm/archive ] && (rm -rf ~/.gvm/archive;mkdir -p /tmp/cache/gvm/archive;ln -s /tmp/cache/gvm/archive ~/.gvm/archive)

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
