#!/bin/bash

# See following for more information: http://www.infinitered.com/blog/?p=19

# Path ------------------------------------------------------------
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH  # OS-X Specific, with MacPorts and MySQL installed
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH  # OS-X Specific, with MacPorts installed
export JAVA_HOME=$(/usr/libexec/java_home)

if [ -d ~/bin ]; then
	export PATH=:~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi



# Load in .bashrc -------------------------------------------------
source ~/.bashrc



# Hello Messsage --------------------------------------------------
# -e is not supported in osx so I removed it.
echo "Kernel Information: " `uname -smr`
echo "$(tput setaf 4)`bash --version`$(tput sgr0)"
echo -ne "$(tput setaf 5)Uptime: "; uptime
echo -ne "$(tput setaf 5)Server time is: "; date
echo -ne "$(tput sgr0)"



# Notes: ----------------------------------------------------------
# When you start an interactive shell (log in, open terminal or iTerm in OS X, 
# or create a new tab in iTerm) the following files are read and run, in this order:
#     profile
#     bashrc
#     .bash_profile
#     .bashrc (only because this file is run (sourced) in .bash_profile)
#
# When an interactive shell, that is not a login shell, is started 
# (when you run "bash" from inside a shell, or when you start a shell in 
# xwindows [xterm/gnome-terminal/etc] ) the following files are read and executed, 
# in this order:
#     bashrc
#     .bashrc

##
# Your previous /Users/baidu/.bash_profile file was backed up as /Users/baidu/.bash_profile.macports-saved_2014-09-16_at_23:12:12
##

# MacPorts Installer addition on 2014-09-16_at_23:12:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

