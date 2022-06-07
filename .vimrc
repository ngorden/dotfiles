syntax on
filetype plugin indent on

set exrc
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set scrolloff=8
set guifont=Iosevka\ 20
set guioptions-=m
set guioptions-=T
set number
set ignorecase
set incsearch
set cinoptions=l1
colorscheme desert

set nobackup
set noswapfile
set noundofile

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader = " "
nnoremap <leader>f :Files<CR>
