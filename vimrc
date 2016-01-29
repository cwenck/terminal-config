execute pathogen#infect()

let tabsize = 4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

set number
set relativenumber

augroup lineNums
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
augroup END

colorscheme molokai

set background=dark

set nocompatible
set backspace=indent,eol,start
set expandtab
set showmatch
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
syntax enable

set ruler
set showcmd

set smartcase

set statusline+=%f
set ls=2

set linebreak
set autoindent

filetype indent on
