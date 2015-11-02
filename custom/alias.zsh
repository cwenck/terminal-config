#Common Directory Aliases
alias dsk='cd ~/Desktop/'
alias dropbox='cd ~/Dropbox/'
alias dl='cd ~/Downloads/'
alias home='cd ~'
alias doc='cd ~/Documents/'
alias cl='clear'
alias app='cd /Applications/'
alias desk='cd ~/Desktop/'
alias cd..='cd ..'
alias back='cd -'
alias zshconfig='cd ~/.oh-my-zsh/custom/'
alias myconfig='cd ~/.sys-config/'
alias cyber='cd ~/.cyber'

#Added Commands
alias trashdl='mv ~/Downloads/* ~/.Trash'
alias dlclear=trashdl
alias reload='. ~/.zshrc'
alias refresh='. ~/.zshrc'
alias starwars='telnet towel.blinkenlights.nl'
alias viewdir='ranger'
alias brewcl='brew update && brew upgrade && brew prune'

#Defaults for Commands
alias cowsay='clear;cowsay'
alias cowsays='clear;cowsay'
alias figlet='clear;figlet'
alias blktxt='clear;figlet'
alias scalpel='scalpel -c ~/.cyber/scalpel.conf'

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
  mv $1 ~/.Trash
}
alias trash=mvToTrash

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
