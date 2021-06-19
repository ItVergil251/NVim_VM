
"=====================
filetype plugin indent on
set encoding=utf-8
"set nocompatible
syntax enable

if has('nvim')
	"NVim block
  set termguicolors
else
	"Vim block
endif

"reload file if chenge outside
set autoread

set visualbell

set scrolloff=2

set ruler number relativenumber cursorline

set expandtab tabstop=2 autoindent softtabstop=2 shiftwidth=2

set showcmd wildmenu

set hlsearch incsearch

set wrap linebreak nolist textwidth=79
"set curcor
set ttimeoutlen=10
let &t_SI.="\e[5 q" 
let &t_SR.="\e[3 q"
let &t_EI.="\e[2 q"

"if empty(glob('~/.vim/autoload/plug.vim'))


" Plugins
if has('nvim')
	"NVim block
    call plug#begin()
else
	"Vim block
    call plug#begin('~/.vim/plugged')
endif
Plug 'vim-airline/vim-airline' 
"Plug 'vim-airline/air-line'
Plug 'airblade/vim-gitgutter' 
Plug 'dracula/vim', {'name': 'dracula'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c','cpp']}
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/DoxyGen-Syntax'
call plug#end()