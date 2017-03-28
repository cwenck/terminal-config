set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

"Plug 'Valloric/YouCompleteMe' ", { 'do': './install.py --all' }
"Plug 'Shougo/neocomplete.vim'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'craigemery/vim-autotag'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'elzr/vim-json'
Plug 'terryma/vim-multiple-cursors' " Figure out how to use this
Plug 'Chiel92/vim-autoformat' " Figure out how to use this

Plug 'tpope/vim-surround'
" Work on mixing the below two plugins
" Plug 'wellle/targets.vim'
" Plug 'PeterRincker/vim-argumentative'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" Color Scheme Plugs
Plug 'dikiaap/minimalist'


call plug#end()

filetype indent plugin on

" Spaces instead of tabs
let tabsize = 4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

" Line Numbers
set number " Set this to real line number for the current line
set relativenumber " Relative line numbers

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Enable mouse in all modes
set mouse=a

" Will take you to start of text vs start of line
set nostartofline

" Try to keep 3 lines between edge of window and cursor when scrolling
set scrolloff=3

set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest

" Highlight the cursor line
" set cursorline

" Speed up vim (like scrolling)
set ttyfast

" Show current position in line in statusbar
set ruler

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set laststatus=2

" Save undos to a file, will persist when vim quits
set undofile

" Search Options
set showmatch
set smartcase
set ignorecase
set hlsearch
set incsearch

set statusline+=%f
set ls=2

set linebreak

" Keep vim speedy
set timeoutlen=1000 ttimeoutlen=0

" Indent
set autoindent

" Copy Paste to System Clipboard
set clipboard=unnamed

" Color Scheme

" set t_Co=256
set t_Co=16
set background=dark

syntax enable

" set termguicolors
" colorscheme custom-material
colorscheme molokai " Toby Color Scheme
" colorscheme solarized
" colorscheme minimalist

" highlight Normal ctermbg=NONE " use terminal background
" highlight nonText ctermbg=NONE " use terminal background

" JSON show all quotes
let g:vim_json_syntax_conceal = 0

" Airline settings
" let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Vim Commentary Added Support
autocmd FileType ocaml setlocal commentstring=(*\ %s\ *)

"Keyboard Mappings "
"-------------------"

" Map leader key
let mapleader = ","

" Clear search highlights by pressing return in command mode
nnoremap <leader><space> :noh<cr>

" Avoid entering Ex mode
nnoremap Q <nop>

" Map Ctrl-C to Esc
inoremap <C-c> <Esc> 
vnoremap <C-c> <Esc>

" Move by screen lines in vim
nnoremap j gj
nnoremap k gk

" Use 'Magic' mode for regex (so it behaves more normally)
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//

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

" nnoremap <CR> :noh<CR><CR>
