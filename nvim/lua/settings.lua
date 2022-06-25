vim.o.errorbells        = false
vim.o.expandtab         = true
vim.o.exrc              = true
vim.o.incsearch         = true
vim.o.nu                = true
vim.o.relativenumber    = true
vim.o.smartcase         = true
vim.o.smartindent       = true

vim.o.scrolloff         = 8
vim.o.shiftwidth        = 4
vim.o.softtabstop       = 4
vim.o.tabstop           = 4

vim.o.backup            = false
vim.o.swapfile          = false
vim.o.undofile          = false

vim.o.foldmethod        = 'syntax'
vim.o.guifont           = 'Iosevka 20'
vim.o.splitbelow        = true
vim.o.splitright        = true

vim.cmd([[
    syntax on
    filetype plugin indent on
    if !exists('g:syntax_on') | syntax enable | endif

    colorscheme desert
    set guioptions-=m
    set guioptions-=T
]])
