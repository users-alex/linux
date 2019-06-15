# .bash_profile

export PYENV_ROOT=/usr/local/pyenv

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/bin:$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

#[ -f /glob/development-tools/parallel-studio/bin/compilervars.sh ] && source /glob/development-tools/parallel-studio/bin/compilervars.sh intel64
#export INTEL_LICENSE_FILE=/usr/local/licenseserver/psxe.lic
#export PATH=/glob/intel-python/python3/bin/:/glob/intel-python/python2/bin/:${PATH}
#export LD_LIBRARY_PATH=/glob/development-tools/mklml/lib/:${LD_LIBRARY_PATH}
