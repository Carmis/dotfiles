" Disable VI compability
set nocompatible

" Enable pathogen to load plugins
call pathogen#infect()
call pathogen#helptags()

set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent
set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
set autoread
set ruler
set hlsearch
set showcmd
set showmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set ttyfast
set scrolloff=5

syntax on

if &term == "xterm" || &term == "screen-bce"
  set t_Co=256
  colorscheme zenburn
endif

if &term == "screen-256color"
  colorscheme zenburn
endif

if has("autocmd")
  filetype plugin indent on
endif

runtime macros/matchit.vim

if has('gui_running')
  set guioptions-=T            "turn off toolbar
  set guioptions-=m            "turn off menubar

  turn off scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b
end

if exists('+colorcolumn')
  set colorcolumn=80 "color the 80th column differently as a wrapping guide
endif

let mapleader=","

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
