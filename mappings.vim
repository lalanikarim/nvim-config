imap {  {}<ESC>i
imap (  ()<ESC>i
imap [  []<ESC>i

nnoremap <leader>fm <cmd>lua vim.lsp.buf.formatting()<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>fm <cmd>Telescope oldfiles<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>

nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>ld <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>lw <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>la <cmd>Telescope lsp_code_actions<cr>
nnoremap <leader>lc <cmd>Telescope lsp_range_code_actions<cr>

nnoremap gd <cmd>Lspsaga preview_definition<cr>
" nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap gi <cmd>Telescope lsp_implementations<cr>

nnoremap <leader>vk <cmd>Telescope keymaps<cr>

nnoremap <leader>rn <cmd>Lspsaga rename<cr>
nnoremap gh <cmd>Lspsaga lsp_finder<cr>
nnoremap <silent>L <cmd>Lspsaga hover_doc<cr>

nnoremap <leader>nn <cmd>NERDTreeToggle<cr>
nnoremap <leader>nf <cmd>NERDTreeFind<cr>
nnoremap <leader>nc <cmd>NERDTreeFocus<cr>
