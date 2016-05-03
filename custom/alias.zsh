#Tmp SSH Alias
alias tmp='ssh -p 59206 root@aceslab.umd.edu'

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

#Honeypot Aliases
alias vzhost='ssh -p 48417 hp@aceslab.umd.edu'

#Programing Directories
alias code='cd ~/Dropbox/Programming/'
alias pydir='cd ~/Dropbox/Programming/Python/'
alias cdir='cd ~/Dropbox/Programming/C/'
alias jsndir='cd ~/Dropbox/Programming/Node/'
alias clookup='man 3'
alias syslookup='man 2'

#Vagrant Aliases
alias vhome='~/VagrantBoxes'
alias vstat='vagrant global-status'
alias vstart='vagrant up && vagrant ssh'
alias vrestart='vagrant halt && vagrant up && vagrant ssh'

#Docker Aliases
alias dockerStartup='exec "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh"'
alias dockerHalt='VBoxManage controlvm default poweroff'
function dssh {
    docker start $1 > /dev/null 2>&1
    docker exec -it $1 bash
}

# GCC Aliases
function gccr {
    gcc $*
    ./a.out
}


#Git Aliases
alias gits='git status'

#Finder Aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder'

alias showPathBar='defaults write com.apple.finder ShowPathbar -bool true; killall Finder'
alias hidePathBar='defaults write com.apple.finder ShowPathbar -bool false; killall Finder'

alias hideDesktop='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

#UMD SSH
alias grace='ssh cwenck@grace1.umd.edu'
alias xgrace='ssh -X cwenck@grace1.umd.edu'

#ACES
alias aces='ssh cwenck@acesclass.umd.edu -p5044'

#Added Commands
alias trashdl='mv ~/Downloads/* ~/.Trash'
alias dlclear='mv ~/Downloads/* ~/.Trash'
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'

# OSX Power
alias off='osascript -e "tell app \"System Events\" to shut down"'
alias reboot='osascript -e "tell app \"System Events\" to restart"'
alias retart='osascript -e "tell app \"System Events\" to restart"'
alias sleep='pmset sleepnow'

#alias starwars='telnet towel.blinkenlights.nl'
alias viewdir='ranger'
alias brewfix='brew update && brew upgrade -v && brew prune && brew cleanup -s'
alias brewClean='brew cleanup -s'
alias cpumodel='sysctl -n machdep.cpu.brand_string'
alias sysinfo='archey'
alias zshupgrade='upgrade_oh_my_zsh && ~/.sys-config/create-links' 

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
