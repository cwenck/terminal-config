execute pathogen#infect()

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
set softtabstop=2
set tabstop=2
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
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
