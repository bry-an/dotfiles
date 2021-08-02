nnoremap <Leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <Leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>

fun! LspLocationList()
    lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
endfun

augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END
