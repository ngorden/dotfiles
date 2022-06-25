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

    " Sharpenup: {{{
    " All sharpenup mappings will begin with `<Space>os`, e.g. `<Space>osgd` for
    " :OmniSharpGotoDefinition
    let g:sharpenup_map_prefix = '<Space>os'

    let g:sharpenup_statusline_opts = { 'Text': '%s (%p/%P)' }
    let g:sharpenup_statusline_opts.Highlight = 0

    augroup OmniSharpIntegrations
    autocmd!
    autocmd User OmniSharpProjectUpdated,OmniSharpReady call lightline#update()
    augroup END
    " }}}
]])
