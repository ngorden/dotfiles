vim.g.sharpenup_map_prefix = ','
vim.g.sharpenup_statusline_opts = { Text = '%s (%p/%P)' }
vim.g.sharpenup_statusline_opts.Highlight = 0

vim.cmd([[
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ asyncomplete#force_refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
]])
