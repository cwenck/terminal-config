#Tmp SSH Alias
alias tmp='ssh -p 46916 root@aceslab.umd.edu'

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
alias zshconfig='cd ~/.sys-config/zsh/'
alias cfg='cd ~/.sys-config/'
alias cyber='cd ~/.cyber'
alias subl-snippet='cd "/Users/connor/Library/Application Support/Sublime Text 3/Packages/User"'


#Programing Directories
alias code='cd ~/Dropbox/Programming/'
alias pydir='cd ~/Dropbox/Programming/Python/'
alias cdir='cd ~/Dropbox/Programming/C/'
alias jsndir='cd ~/Dropbox/Programming/Node/'

alias 330="cd ~/Connor\'s\ Stuff/College/Fall\ 2016/CMSC\ 330/code/"

alias clookup='man 3'
alias syslookup='man 2'

#Vagrant Aliases
alias vhome='~/VagrantBoxes'
alias vstat='vagrant global-status'
alias vstart='vagrant up && vagrant ssh'
alias vrestart='vagrant halt && vagrant up && vagrant ssh'

#Finder Aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder'

alias showPathBar='defaults write com.apple.finder ShowPathbar -bool true; killall Finder'
alias hidePathBar='defaults write com.apple.finder ShowPathbar -bool false; killall Finder'

alias hideDesktop='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

alias keychainClearCache='trash $(find . -maxdepth 1 -type d | grep -v "^\.$")'

#UMD SSH
alias grace='ssh cwenck@grace1.umd.edu'
alias xgrace='ssh -X cwenck@grace1.umd.edu'

#ACES
alias aces='ssh cwenck@acesclass.umd.edu -p5044'

#Added Commands
alias trashdl='trash ~/Downloads/*'
alias dlclear='trash ~/Downloads/*'
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'

alias brewFix='brew update && brew upgrade -v && brew prune && brew cleanup -s && brew cask cleanup'
alias brewClean='brew cleanup -s && brew cask cleanup'
alias brewDoctor='brew doctor && brew cask doctor'

#alias starwars='telnet towel.blinkenlights.nl'
alias cpumodel='sysctl -n machdep.cpu.brand_string'
alias sysinfo='archey'

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

#Function Aliases
changeDirAndList(){
    cd $1
    clear
    ls
}
alias cdl=changeDirAndList
