syntax on

set backspace=indent,eol,start

set number
set relativenumber

augroup lineNums
  autocmd!
  autocmd InsertEnter * set norelativenumber
  autocmd InsertLeave * set relativenumber
augroup END
