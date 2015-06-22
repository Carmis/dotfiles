" Disable VI compability
set nocompatible

" Enable pathogen to load plugins
call pathogen#infect()
call pathogen#helptags()

set autoindent
set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
set autoread
set ruler
set hlsearch
syntax on

set laststatus=2
let g:airline_powerline_fonts=1

if &term == "xterm" || &term == "screen-bce"
  set t_Co=256
  colorscheme zenburn
endif

if has("autocmd")
  filetype plugin indent on
endif
