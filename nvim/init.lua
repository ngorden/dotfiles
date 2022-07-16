require 'impatient'
require 'plugins'
require 'remaps'
require 'settings'

require 'ale'
require 'asynccomplete'
require 'colors'
require 'nvim-cmp'
require 'omnisharp'
require 'sharpenup'
require 'treesitter'

require 'telescope'.load_extension('ui-select')
require 'octo'.setup()

if vim.g.using_lsp_signature > 0 then
    require 'lsp_signature'.setup()
end
