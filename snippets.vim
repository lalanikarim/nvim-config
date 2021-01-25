" Tab completion for snippets
let g:UltiSnipsExpandTrigger='<Tab>'

" Ctrl+b to switch to the next reference point in the snippet
let g:UltiSnipsJumpForwardTrigger='<C-b>'

" Ctrl+z to switch to the previous reference point in the snippet
let g:UltiSnipsJumpBackwardTrigger='<C-z>'

" Look for snippets inside the default 'UtilSnips' folder as well as
" 'MyCustomSnips' folder
let g:UltiSnipsSnippetDirectories=['UltiSnips','MyCustomSnips']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit='vertical'

" Include flutter snippets for *.dart files
autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter

" Include laravel snippets for *.php files
autocmd BufRead,BufNewFile,BufEnter *.php UltiSnipsAddFiletypes php-laravel
