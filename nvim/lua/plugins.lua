require ('blamer')
require ('configure_wilder')

vim.g.using_chadtree = 0
usingChadTree = vim.g.using_chadtree > 0 and true or false

vim.g.using_nerdtree = 0
usingNerdTree = vim.g.using_nerdtree > 0 and true or false

vim.g.using_lua_snip = 1
usingLuaSnip = vim.g.using_lua_snip > 0 and true or false

vim.g.using_ultisnips = 0
usingUltisnips = vim.g.using_ultisnips > 0 and true or false

function usePacks()
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

    use { 'gelguy/wilder.nvim', config = configureWilder }
    use { 'jubnzv/virtual-types.nvim', requires = 'neovim/nvim-lspconfig' }
    use { 'maximbaz/lightline-ale', requires = { 'dense-analysis/ale', 'itchyny/lightline.vim' } }
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'rhysd/vim-lsp-ale', requires = { 'dense-analysis/ale', 'prabirshrestha/vim-lsp' } }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use 'AndrewRadev/diffurcate.vim'
    use 'AndrewRadev/sideways.vim'

    use 'APZelos/blamer.nvim'
    use 'fedepujol/move.nvim'
    use 'gruvbox-community/gruvbox'
    use 'MarcWeber/vim-addon-local-vimrc'
    use 'nickspoons/vim-sharpenup'
    use 'nvim-treesitter/nvim-treesitter'
    use 'OmniSharp/omnisharp-vim'
    use 'OrangeT/vim-csharp'
    use 'prabirshrestha/asyncomplete.vim'
    use 'preservim/tagbar'
	use 'shinchu/lightline-gruvbox.vim'

    if usingChadTree then
        use 'ms-jpq/chadtree'
    elseif usingNerdTree then
        use 'preservim/nerdtree'
    end

    if usingUltisnips then
        use { 'quangnguyen30192/cmp-nvim-ultisnips', requires = 'sirver/ultisnips' }
    elseif usingLuaSnip then
        use { 'saadparwaiz1/cmp_luasnip', requires = 'L3MON4D3/LuaSnip' }
    end

    use { 'hrsh7th/nvim-cmp', 
        config = function ()
            local req = usingLuaSnip and 'luasnip' or usingSnippets and 'ultisnips' or nil
            require 'cmp'.setup {
                snippet = { expand = function(args) require(req).lsp_expand(args.body) end },
                sources = { { name = req } }
            }
        end
    }
end

return require('packer').startup(usePacks)
