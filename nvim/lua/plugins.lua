require 'configure_globals'
require 'configure_wilder'

function usePacks()
	use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

    use { 'gelguy/wilder.nvim', config = configureWilder }
    use { 'jubnzv/virtual-types.nvim', requires = 'neovim/nvim-lspconfig' }
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'rhysd/vim-lsp-ale', requires = { 'dense-analysis/ale', 'prabirshrestha/vim-lsp' } }
    use { 'pwntester/octo.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'kyazdani42/nvim-web-devicons' }, }

    use 'nvim-telescope/telescope-ui-select.nvim'
    if vim.g.using_lualine > 0 then
        use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
        require('lualine_config')
    end

    if vim.g.using_cmp_nvim > 0 then
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'

        use { 'saadparwaiz1/cmp_luasnip', requires = 'L3MON4D3/LuaSnip' }
        use { 'hrsh7th/nvim-cmp', 
            config = function ()
                require 'cmp'.setup {
                    snippet = { expand = function(args) require'luasnip'.lsp_expand(args.body) end },
                    sources = { { name = 'luasnip' } }
                }
            end
        }
    end

    if vim.g.using_lsp_signature > 0 then
        use 'ray-x/lsp_signature.nvim'
    end

    use 'AndrewRadev/diffurcate.vim'
    use 'AndrewRadev/sideways.vim'
    use 'fedepujol/move.nvim'

    use 'gruvbox-community/gruvbox'
    use 'MarcWeber/vim-addon-local-vimrc'
    use 'nickspoons/vim-sharpenup'
    use 'nvim-treesitter/nvim-treesitter'
    use 'OmniSharp/omnisharp-vim'
    use 'OrangeT/vim-csharp'
    use 'prabirshrestha/asyncomplete.vim'
end

return require('packer').startup(usePacks)
