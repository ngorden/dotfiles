let g:using_snippets = 0

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' '

call plug#begin("~/vimfiles/plugged")
Plug 'OrangeT/vim-csharp'
Plug 'tpope/vim-fugitive'
Plug 'nickspoons/vim-sharpenup'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'rhysd/vim-lsp-ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'preservim/tagbar'
Plug 'OmniSharp/omnisharp-vim'
Plug 'APZelos/blamer.nvim'
if has('nvim')
    function! UpdateRemotePlugins(...)
        let &rtp=&rtp
        UpdateRemotePlugins
    endfunction
    Plug 'MarcWeber/vim-addon-local-vimrc'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'gelguy/wilder.nvim'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
if g:using_snippets
  Plug 'sirver/ultisnips'
endif
call plug#end()
