vim.g.OmniSharp_server_use_net6 = 1
vim.g.OmniSharp_popup_position = 'peek'

vim.g.OmniSharp_want_snippet = vim.g.using_lua_snip
vim.g.OmniSharp_highlight_groups = { ExcludedCode = 'NonText', }
vim.g.OmniSharp_popup_mappings = { sigNext = '<C-n>', sigPrev = '<C-p>', pageDown = { '<C-f>', '<PageDown>', }, pageUp = { '<C-b>', '<PageUp>', } }

if vim.fn.has('nvim') then
    vim.g.OmniSharp_popup_options = { winblend = 30, winhl = 'Normal:Normal,FloatBorder:ModeMsg', border = 'rounded' }
else
    vim.g.OmniSharp_popup_options = { highlight = 'Normal', padding = { 0 }, border = { 1 }, borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }, borderhighlight = { 'ModeMsg' } }
end
