# bash_profile
# Aditya Trivedi

# Enable colourized output for listing directory contents, append '/' to directories, and extra symbols after various filetypes for differentiation
alias ls='ls -GFah'

# Alias for python 3
alias python=python3

# Make prompt git aware
function get_git_branch {
	git branch | awk '/^\*/ { print $2 }'
}
function get_git_dirty {
	git diff --quiet || echo '*'
}
function get_git_prompt {
	git branch &> /dev/null || return 1
	echo "<$(get_git_branch)$(get_git_dirty)> "
}

# Customize prompt to show the path, prompt character in red, and git branch in yellow
export PS1='\[\e[0;31m\]\w\[\e[0m\] \[\e[0;33m\]$(get_git_prompt)\$\[\e[0m\]'

# Enable coloring in terminal
export CLICOLOR=1

# Use MacVim as default to edit files
export EDITOR='mvim'

# Create and change into the newly created directory in one step
mkcd() {
    mkdir -p "$*"
    cd "$*"
}

# Configuration to run JDK 1.7
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
