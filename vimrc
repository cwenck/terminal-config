set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

"Plug 'Valloric/YouCompleteMe' ", { 'do': './install.py --all' }
"Plug 'Shougo/neocomplete.vim'

" NOTE: Order matters for these two
Plug 'coot/CRDispatcher'
Plug 'coot/EnchantedVim'	" Very magic mode (regex) for searching

Plug 'vimwiki/vimwiki'

Plug 'ajh17/VimCompletesMe'
"Try supertab as well

Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'craigemery/vim-autotag'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'elzr/vim-json'
Plug 'terryma/vim-multiple-cursors' " Figure out how to use this
Plug 'Chiel92/vim-autoformat' " Figure out how to use this

Plug 'sjl/gundo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Plug 'cskeeters/vim-smooth-scroll'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

Plug 'tpope/vim-repeat'
" Plug 'tpope/tpope-vim-abolish' " Spelling correction
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating' " Allows increment and decrement of dates with <C-a> and <C-x>
Plug 'tpope/vim-unimpaired' " Pairs of certain mappings

Plug 'kshenoy/vim-signature'

" Work on mixing the below two plugins
" Plug 'wellle/targets.vim'
" Plug 'PeterRincker/vim-argumentative'

" Color Scheme Plugs
Plug 'joshdick/onedark.vim'

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

if (has("autocmd"))
	augroup linenums
		au!
		au InsertEnter * :set norelativenumber
		au InsertLeave * :set relativenumber
	augroup END
endif

" Enable mouse in all modes
set mouse=a

" Will take you to start of text vs start of line
set nostartofline

" Try to keep 5 lines between edge of window and cursor when scrolling
set scrolloff=5

set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest

set nowrap

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
set undodir=$HOME/.vimundo/

" Search Options
set showmatch
set smartcase
set ignorecase
set hlsearch
" set incsearch

set statusline+=%f
set ls=2

set linebreak

" Keep vim speedy see (https://www.johnhawthorn.com/2012/09/vi-escape-delays/)
set timeoutlen=1000 ttimeoutlen=10

" Indent
set autoindent

" Copy Paste to System Clipboard
set clipboard=unnamed

" Color Scheme
syntax enable

if (has("termguicolors"))
	set termguicolors
else 
	" set t_Co=16
	set t_Co=256
endif

set background=dark
colorscheme onedark

" JSON show all quotes
let g:vim_json_syntax_conceal = 0

" Airline settings
let g:airline_powerline_fonts =	1	" Set to 0 if not using a powerline font
let g:airline#extensions#tabline#enabled = 1

" Vim Commentary Added CommentSupport
autocmd FileType ocaml setlocal commentstring=(*\ %s\ *)

"Keyboard Mappings "
"-------------------"

" Make <Space> the leader key
let mapleader="\\"
map <Space> <leader>

" Clear search highlights by pressing return in command mode
nnoremap <leader>;  :noh<CR>

" Move between splits with Ctrl + hjkl
" map <C-h> <C-w>h
" map <C-j> <C-w>k
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" Move between splits with Ctrl + hjkl
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>k
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Use F1 to toggle NERDTree
inoremap <F1> :NERDTreeToggle<CR>
nnoremap <F1> :NERDTreeToggle<CR>
vnoremap <F1> :NERDTreeToggle<CR>

" Use F2 to toggle vim paste mode
set pastetoggle=<F2>

" Use F3 to open the gundo tree
inoremap <F3> :GundoToggle<CR>
nnoremap <F3> :GundoToggle<CR>
vnoremap <F3> :GundoToggle<CR>

" Use F4 to toggle git gutter
inoremap <F4> :GitGutterToggle<CR>
nnoremap <F4> :GitGutterToggle<CR>
vnoremap <F4> :GitGutterToggle<CR>

" Insert two lines and move to insert mode on the top one
" nmap <leader>o o<Esc>o<Esc>k
nmap <leader>o 2]<Space>jo

" CtrlP key bindings
let g:ctrlp_map = ''
map <C-p> :CtrlPMixed<CR>

" Use 'Magic' mode for regex (so it behaves more normally)
 let g:VeryMagicSubstitute = 1

" Make switching tabs easier
execute "set <M-h>=h"
execute "set <M-l>=l"
nnoremap <silent> <M-h> :tabn<CR>
inoremap <silent> <M-h> <Esc>:tabn<CR>
nnoremap <silent> <M-l> :tabp<CR>
inoremap <silent> <M-l> <Esc>:tabp<CR>

nnoremap tj :tabp<CR>
nnoremap tk :tabn<CR>

" Don't move the cursor back when leaving insert mode
" inoremap <silent> <Esc> <Esc>`^
" This mapping screws up the arrow keys so use mappings
" to <C-c> for insert mode and leave <Esc> alone

" Map Ctrl-C to Esc
nmap <C-c> <Esc>`^
imap <C-c> <Esc>`^

" Use alternatives to entering insert mode
imap <nowait> <silent> jj <Esc>`^

" Avoid entering Ex mode
nnoremap Q <nop>

" Move by screen lines in vim
nnoremap k gk
nnoremap j gj

" Press either Alt + Up or Alt + Down to move lines up or down
execute "set <M-j>=j"
execute "set <M-k>=k"
map <M-k> [e
map <M-j> ]e

" Incsearch mapping (Use \v for magic mode)
map /  <Plug>(incsearch-forward)\v
map ?  <Plug>(incsearch-backward)\v
map g/ <Plug>(incsearch-stay)\v

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Fuzzy Incsearch mappings
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

