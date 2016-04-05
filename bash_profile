#
# bash_profile
#

# Include aliases.
source ~/.alias;

# Add GOPATH.
export GOPATH=$HOME/go

# Add Go to PATH.
export PATH="$GOPATH/bin:$PATH:/usr/local/go/bin"

# If the OS is not OS X, apply these settings too.
if [[ `uname` != "Darwin" ]]; then
    # If not running interactively, don't do anything
    [[ $- != *i* ]] && return

    # Set display for terminal prompt.
    PS1='[\u@\h \W]\$ '

    # Make xterm the default terminal for the i3 window manager.
    export TERMINAL=xterm

    # Make vim the default editor.
    export VISUAL=vim
    export EDITOR=vim

    # Make ls and grep colorful.
    export CLICOLOR=1
    export GREP_OPTIONS='--color=auto'
fi
