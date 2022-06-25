if vim.g.using_nerdtree == 1 then
    vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree')  && b:NERDTree.isTabTree() | quit | endif")
end
