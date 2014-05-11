### Customize prompt to show 'user@host' in green, current working directory in red, and prompt character in red
export PS1='\[\e[0;31m\][\u]\[\e[0m\] \[\e[0;33m\]\W \$ \[\e[0m\]'
#from IBM export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"

### Enable colourized output for listing directory contents, append '/' to directories, and extra symbols after various filetypes for differentiation
alias ls='ls -GFah'

### Instead of ls -G, may use CLICOLOR setting
CLICOLOR=1
export CLICOLOR

export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
