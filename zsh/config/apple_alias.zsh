#Common Directory Aliases
alias app='cd /Applications/'
alias apps='cd /Applications/'
alias cyber='cd ~/.cyber'
alias subl-snippet='cd "/Users/connor/Library/Application Support/Sublime Text 3/Packages/User"'


#Programing Directories
alias netdir="cd ~/Connor\'s\ Stuff/College/Spring\ 2017/CMSC\ 417/code/"


#Finder Aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder'

alias showPathBar='defaults write com.apple.finder ShowPathbar -bool true; killall Finder'
alias hidePathBar='defaults write com.apple.finder ShowPathbar -bool false; killall Finder'

alias hideDesktop='defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop -bool true; killall Finder'

alias keychainClearCache='trash $(find . -maxdepth 1 -type d | grep -v "^\.$")'


#Added Commands
alias trashdl='trash ~/Downloads/*'
alias dlclear='trash ~/Downloads/*'


#Homebrew Aliases
alias brewFix='brew update && brew upgrade -v && brew prune && brew cleanup -s && brew cask cleanup'
alias brew-clean='brew cleanup -s && brew cask cleanup'
alias brew-doctor='brew doctor && brew cask doctor'
alias vbox-update='brew update && brew cask uninstall --force virtualbox-extension-pack && brew cask uninstall --force virtualbox && brew cask install virtualbox && brew cask install virtualbox-extension-pack'


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
