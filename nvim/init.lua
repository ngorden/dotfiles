require('impatient')
require('plugins')
require('remaps')
require('settings')

require('ale')
require('asynccomplete')
require('colors')
require('lspsettings')
require('nerdtree')
require('nvim-cmp')
require('omnisharp')
require('sharpenup')
require('treesitter')

if vim.g.using_lsp_signature > 0 then
    require('lsp_signature').setup()
end
