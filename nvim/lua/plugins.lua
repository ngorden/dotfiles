require ('blamer')
require ('configure_globals')
require ('configure_wilder')

function usePacks()
	use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

    use { 'gelguy/wilder.nvim', config = configureWilder }
    use { 'jubnzv/virtual-types.nvim', requires = 'neovim/nvim-lspconfig' }
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'rhysd/vim-lsp-ale', requires = { 'dense-analysis/ale', 'prabirshrestha/vim-lsp' } }

    if vim.g.using_lightline > 0 then
        use { 'maximbaz/lightline-ale', requires = { 'dense-analysis/ale', 'itchyny/lightline.vim' } }
        use 'shinchu/lightline-gruvbox.vim'
        require('lightline_config')
    elseif vim.g.using_lualine > 0 then
        use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
        require('lualine_config')
    end

    if vim.g.using_cmp_nvim > 0 then
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
    end

    if vim.g.using_lsp_signature > 0 then
        use 'ray-x/lsp_signature.nvim'
    end

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

    if vim.g.using_chadtree > 0 then
        use 'ngorden/chadtree'
    elseif vim.g.using_nerdtree > 0 then
        use 'preservim/nerdtree'
    end

    if vim.g.using_cmp_nvim > 0 then
        if vim.g.using_ultisnips > 0 then
            use { 'quangnguyen30192/cmp-nvim-ultisnips', requires = 'sirver/ultisnips' }
        elseif vim.g.using_lua_snip > 0 then
            use { 'saadparwaiz1/cmp_luasnip', requires = 'L3MON4D3/LuaSnip' }
        elseif vim.g.using_vsnip > 0 then
            use { 'hrsh7th/vim-vsnip', requires = 'hrsh7th/vim-vsnip-integ' }
        end

        use { 'hrsh7th/nvim-cmp', 
            config = function ()
                local req = vim.g.using_lua_snip > 0 and 'luasnip'
                    or vim.g.using_ultisnips > 0 and 'ultisnips'
                    or vim.g.using_vsnip > 0 and 'vsnip' or nil

                require 'cmp'.setup {
                    snippet = { expand = function(args) require(req).lsp_expand(args.body) end },
                    sources = { { name = req } }
                }
            end
        }
    end
end

return require('packer').startup(usePacks)
