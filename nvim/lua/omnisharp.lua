-- OmniSharp: {{{
vim.g.OmniSharp_server_use_net6 = 1
vim.g.OmniSharp_popup_position = 'peek'
vim.cmd([[
    if has('nvim')
        let g:OmniSharp_popup_options = {
        \ 'winblend': 30,
        \ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
        \ 'border': 'rounded'
        \}
    else
        let g:OmniSharp_popup_options = {
        \ 'highlight': 'Normal',
        \ 'padding': [0],
        \ 'border': [1],
        \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
        \ 'borderhighlight': ['ModeMsg']
        \}
    endif
    let g:OmniSharp_popup_mappings = {
    \ 'sigNext': '<C-n>',
    \ 'sigPrev': '<C-p>',
    \ 'pageDown': ['<C-f>', '<PageDown>'],
    \ 'pageUp': ['<C-b>', '<PageUp>']
    \}

    if g:using_snippets || g:using_lua_snip
    let g:OmniSharp_want_snippet = 1
    endif

    let g:OmniSharp_highlight_groups = {
    \ 'ExcludedCode': 'NonText'
    \}
]])
-- }}}
