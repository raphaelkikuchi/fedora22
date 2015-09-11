# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

ORACLE_HOME=/usr/lib/oracle/11.2/client64
LD_LIBRARY_PATH=$ORACLE_HOME/lib
TNS_ADMIN=/home/raphaelk/

export PATH

export ORACLE_HOME
export LD_LIBRARY_PATH
export TNS_ADMIN
