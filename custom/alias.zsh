#Common Directory Aliases
alias dsk='cd ~/Desktop/'
alias dropbox='cd ~/Dropbox/'
alias dl='cd ~/Downloads/'
alias home='cd'
alias doc='cd ~/Documents/'
alias cl='clear'
alias app='cd /Applications/'
alias apps='cd /Applications/'
alias desk='cd ~/Desktop/'
alias cd..='cd ..'
alias back='cd -'
alias zshconfig='cd ~/.oh-my-zsh/custom/'
alias cfg='cd ~/.sys-config/'
alias cyber='cd ~/.cyber'
alias subl-snippet='cd "/Users/connor/Library/Application Support/Sublime Text 3/Packages/User"'


#Programing Directories
alias pydir='cd ~/Dropbox/Programming/Python/'

# GCC Aliases
alias gccrun=gccAndRun
alias gccr=gccAndRun
function gccAndRun(){
    gcc $1
    ./a.out
}


#Git Aliases
alias gits='git status'

#Finder Aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles true; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles false; killall Finder'

#UMD SSH
alias grace='ssh cwenck@linux.grace.umd.edu'

#ACES
alias aces='ssh cwenck@acesclass.umd.edu -p5044'

#Added Commands
alias trashdl='mv ~/Downloads/* ~/.Trash'
alias dlclear='mv ~/Downloads/* ~/.Trash'
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'
alias starwars='telnet towel.blinkenlights.nl'
alias viewdir='ranger'
alias brewfix='brew update && brew upgrade -v && brew prune && brew cleanup && brew cask cleanup'
alias cpumodel='sysctl -n machdep.cpu.brand_string'
alias zshupgrade='upgrade_oh_my_zsh' 

#Defaults for Commands
alias cowsay='clear;cowsay'
alias cowsays='clear;cowsay'
alias figlet='clear;figlet'
alias blktxt='clear;figlet'
alias scalpel='scalpel -c ~/.cyber/scalpel.conf'
alias waldo='python ~/.cyber/waldo/waldo.py'
alias tac='gtac'

#Program Shortcuts
alias mlab='matlab -nodesktop'
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'
alias sha512='shasum -a 512'

#Robotics
alias uwsim='rosrun uwsim uwsim --disableShaders --disableTextures'
alias robotssh='ssh connor@192.168.56.101'

#Function Aliases
changeDirAndList(){
    cd $1
    clear
    ls
}
alias cdl=changeDirAndList

mvToTrash(){
    for arg in $*
    do
        mv $arg ~/.Trash
    done
}
alias trash=mvToTrash

pushDirList(){
    pushd $1
    clear
    ls
}
alias pushdl=pushDirList
alias push=pushDirList

popDirList(){
    popd $1
    clear
    ls
}
alias popdl=popDirList
alias pop=popDirList

ranger-cd(){
    tempfile='/tmp/tmprangerdir'
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
alias rcd=ranger-cd
alias cdr=ranger-cd
