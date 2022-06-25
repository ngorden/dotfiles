require ('blamer')
require ('wilder')

vim.g.using_chadtree = 0
usingChadTree = vim.g.using_chadtree == 1 and true or false

vim.g.using_nerdtree = 0
usingNerdTree = vim.g.using_nerdtree == 1 and true or false

vim.g.using_snippets = 0
usingSnippets = vim.g.using_snippets == 1 and true or false

function usePacks()
	use 'wbthomason/packer.nvim'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

    use { 'gelguy/wilder.nvim', config = configureWilder }
    use { 'jubnzv/virtual-types.nvim', requires = 'neovim/nvim-lspconfig' }
    use { 'maximbaz/lightline-ale', requires = { 'dense-analysis/ale', 'itchyny/lightline.vim' } }
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'rhysd/vim-lsp-ale', requires = { 'dense-analysis/ale', 'prabirshrestha/vim-lsp' } }

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

    if usingSnippets then
        use 'sirver/ultisnips'
    end
end

return require('packer').startup(usePacks)
