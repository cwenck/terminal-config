#!/bin/bash

install () {
	local name=$1
	pacaur -S --needed --noconfirm $name
}

install otf-hermit
install nerd-fonts-source-code-pro
install ttf-roboto
