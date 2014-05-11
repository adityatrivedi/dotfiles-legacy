# bash_profile
# Aditya Trivedi

# Enable colourized output for listing directory contents, append '/' to directories, and extra symbols after various filetypes for differentiation
alias ls='ls -GFah'

# Customize prompt to show username in red and the current relative path in yellow 
export PS1='\[\e[0;31m\][\u]\[\e[0m\] \[\e[0;33m\]\W \$ \[\e[0m\]'

# Enable coloring in terminal
export CLICOLOR=1

# Configuration to run JDK 1.7
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
