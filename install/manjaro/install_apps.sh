#!/bin/bash

install () {
	local name=$1
	pacaur -S --needed --noconfirm $name
}

install google-chrome
install sublime-text-dev
install spotify
install dropbox
