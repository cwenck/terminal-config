#!/bin/bash

install () {
	local name=$1
	pacaur -S --needed --noconfirm $name
}

install git
install tig
install vim
install fasd
install tmux
