-- gh: arnvald/viml-to-lua
vim.g.mapleader = ' '
vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>')

function map(mode, shortcut, cmd)
    vim.api.nvim_set_keymap(mode, shortcut, cmd,
        { noremap = true, silent = true })
end

function nmap(sc, cmd) map('n', sc, cmd) end
function vmap(sc, cmd) map('v', sc, cmd) end

nmap('/', '/\\v')
vmap('/', '/\\v')

nmap('H', '^')
nmap('L', 'g_')

nmap('vv', '<C-w>v')
nmap('ss', '<C-w>s')

nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

vmap('<', '<gv')
vmap('>', '>gv')

nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')

nmap('<A-j>', '<cmd>MoveLine(1)<cr>')
nmap('<A-k>', '<cmd>MoveLine(-1)<cr>')
nmap('<A-l>', '<cmd>SidewaysRight<cr>')
nmap('<A-h>', '<cmd>SidewaysLeft<cr>')

vmap('<A-j>', '<cmd>MoveBlock(1)<cr>')
vmap('<A-k>', '<cmd>MoveBlock(-1)<cr>')
vmap('<A-l>', '<cmd>MoveHBlock(1)<cr>')
vmap('<A-h>', '<cmd>MoveHBlock(-1)<cr>')

nmap('<F8>', '<cmd>TagbarToggle<cr>')
