#Common Directory Aliases
alias dsk='cd ~/Desktop/'
alias dropbox='cd ~/Dropbox/'
alias dl='cd ~/Downloads/'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias cl='clear'
alias app='cd /Applications/'
alias desk='cd ~/Desktop/'
alias zshconfig='cd ~/.oh-my-zsh/custom/'
alias sysconfig='cd ~/.sys-config/'

#Added Commands
alias trashdl='mv ~/Downloads/* ~/.Trash'
alias dlclear=trashdl
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'
alias starwars='telnet towel.blinkenlights.nl'
alias viewdir='ranger'

#Defaults for Commands
alias cowsay='clear;cowsay'
alias cowsays='clear;cowsay'
alias figlet='clear;figlet'
alias blktxt='clear;figlet'

#Program Shortcuts
alias mlab='matlab -nodesktop'
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'
alias sha512='shasum -a 512'

#Function Aliases
changeDirAndList(){
  cd $1
  ls $1
}
alias cdl=changeDirAndList
