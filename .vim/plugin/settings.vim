set exrc
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set scrolloff=8
set nu
set incsearch

colorscheme desert
set noswapfile
set nobackup
set noundofile

set guifont=Iosevka\ 20
set guioptions-=m
set guioptions-=T

set splitright
set splitbelow

syntax on
filetype plugin indent on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

" Asyncomplete: {{{
let g:asyncomplete_auto_popup = 0
let g:asyncomplete_auto_completeopt = 0
" }}}
