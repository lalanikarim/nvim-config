imap {  {}<ESC>i
imap (  ()<ESC>i
imap [  []<ESC>i

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope oldfiles<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>

nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>ld <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>lw <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>la <cmd>Telescope lsp_code_actions<cr>
nnoremap <leader>lc <cmd>Telescope lsp_range_code_actions<cr>

nnoremap <leader>vk <cmd>Telescope keymaps<cr>
