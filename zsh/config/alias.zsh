#Common Directory Aliases
alias dsk='cd ~/Desktop/'
alias dropbox='cd ~/Dropbox/'
alias dl='cd ~/Downloads/'
alias home='cd'
alias doc='cd ~/Documents/'
alias cl='clear'
alias desk='cd ~/Desktop/'
alias cd..='cd ..'
alias zshconfig='cd ~/.sys-config/zsh/'
alias cfg='cd ~/.sys-config/'

# Prezto Alias
alias zprezto-update='cd "${ZDOTDIR:-$HOME}/.zprezto" && git pull && git submodule update --init --recursive'

# FASD Aliases
alias v='f -t -e vim'

#Tmux Aliases
alias mux='tmuxinator'

#TIG Aliases
alias tig='tig --all'

#Programing Directories
alias code='cd ~/Dropbox/Programming/'
alias pydir='cd ~/Dropbox/Programming/Python/'
alias cdir='cd ~/Dropbox/Programming/C/'
alias jsndir='cd ~/Dropbox/Programming/Node/'

# Python
# alias ipython='python3 -c "from IPython import embed; embed()"'

alias clookup='man 3'
alias syslookup='man 2'

#Vagrant Aliases
alias vhome='~/VagrantBoxes'
alias vstat='vagrant global-status'
alias vstart='vagrant up && vagrant ssh'
alias vrestart='vagrant halt && vagrant up && vagrant ssh'

#UMD SSH
alias grace='ssh cwenck@grace1.umd.edu'
alias xgrace='ssh -X cwenck@grace1.umd.edu'

#Added Commands
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'

#Hash Sum Shortcuts
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'
alias sha512='shasum -a 512'

#Function Aliases
changeDirAndList(){
    cd $1
    clear
    ls
}
alias cdl=changeDirAndList

#Create a header and a src file at the same time
ctouch(){
    if [ -d src -a -d include ]; then
        touch "src/$1.c"
        touch "include/$1.h"
    else
        echo "src and include directories not found"
    fi
}

#Rename a header and a src file at the same time
cmv(){
    if [ -d src -a -d include ]; then
        mv "src/$1.c" "src/$2.c"
        mv "include/$1.h" "include/$2.h"
    else
        echo "src and include directories not found"
    fi
}

#Store a header and a src file at the same time
cstore(){
    if [ -d src -a -d include ]; then
        mv "$1.c" "src"
        mv "$1.h" "include"
    else
        echo "src and include directories not found"
    fi
}
