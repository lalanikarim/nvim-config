let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<C-b>'
let g:UltiSnipsJumpBackwardTrigger='<C-z>'
let g:UltiSnipsSnippetDirectories=['UltiSnips','MyCustomSnips']
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit='vertical'
autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter
autocmd BufRead,BufNewFile,BufEnter *.php UltiSnipsAddFiletypes php-laravel
"let g:deoplete#enable_at_startup = 0
"
"" Plugin key-mappings.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
"
"" SuperTab like snippets behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
"\ pumvisible() ? "\<C-n>" :
"\ neosnippet#expandable_or_jumpable() ?
"\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"" For conceal markers.
"if has('conceal')
" set conceallevel=2 concealcursor=niv
"endif
"
"" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1
"
"" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.local/share/nvim/plugged/vim-snippets/snippets'
"
"call deoppet#initialize()
"call deoppet#custom#option('snippets',
"\ map(globpath(&runtimepath, '{snippets,neosnippets,UltiSnips}', 1, 1),
"\     "{ 'path': v:val }"))
"call deoppet#custom#option('ft_snippets_map',{'php':['php','laravel']})
"
"imap <C-k>  <Plug>(deoppet_expand)
"imap <C-f>  <Plug>(deoppet_jump_forward)
"imap <C-b>  <Plug>(deoppet_jump_backward)
"smap <C-f>  <Plug>(deoppet_jump_forward)
"smap <C-b>  <Plug>(deoppet_jump_backward)
