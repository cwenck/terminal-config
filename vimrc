set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'craigemery/vim-autotag'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'elzr/vim-json'
Plugin 'terryma/vim-multiple-cursors' 

Plugin 'atelierbram/vim-colors_duotones'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype indent plugin on

" Spaces instead of tabs
let tabsize = 4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

" Line Numbers
set number
set relativenumber

augroup lineNums
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
augroup END

" Color Scheme

syntax enable
set background=dark
set t_Co=256
let base16colorspace=256

colorscheme molokai
" colorscheme luna-term
" colors duotone-darksea

highlight Normal ctermbg=NONE " use terminal background
highlight nonText ctermbg=NONE " use terminal background

" Other

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


set ruler
set showcmd

" Search Options
set smartcase
set ignorecase
set hlsearch
set incsearch

set statusline+=%f
set ls=2

set linebreak

" Indent
set autoindent

" Copy Paste to System Clipboard
set clipboard=unnamed


" JSON show all quotes
let g:vim_json_syntax_conceal = 0

" Keyboard Mappings "
"-------------------"

" Press either Shift + Up or Shift + Down to move lines up or down
nnoremap <S-down> :m .+1<CR>==
nnoremap <S-up> :m .-2<CR>==
inoremap <S-down> <Esc>:m .+1<CR>==gi
inoremap <S-up> <Esc>:m .-2<CR>==gi
vnoremap <S-down> :m '>+1<CR>gv=gv
vnoremap <S-up> :m '<-2<CR>gv=gv

" Press Shift + Ctrl + d to duplicate a line
nnoremap <C-S-d> :t.<CR>==
inoremap <C-S-d> <Esc>:t.<CR>==gi

" Clear search highlights by pressing return in command mode
nnoremap <CR> :noh<CR><CR>
