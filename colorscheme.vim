if has('termguicolors')

  set termguicolors

endif

if &runtimepath =~? 'sonokai'
" The configuration options should be placed before `colorscheme sonokai`."

  let g:sonokai_style = 'andromeda'
  let g:sonokai_enable_italic = 1

  let g:sonokai_disable_italic_comment = 1

  let g:airline_theme = 'sonokai'
  colorscheme sonokai
endif
hi GreyItalic ctermfg=246 guifg=#7e8294 gui=italic
highlight Normal guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE 
highlight CursorLine ctermbg=236 guibg=#333648
highlight ColorColumn ctermbg=236 guibg=#333648
highlight Visual ctermbg=236 guibg=#333648

highlight link TSType Blue
highlight link TSKeyword RedItalic
highlight link TSKeywordFunction RedItalic
highlight link TSString YellowItalic
highlight link TSComment GreyItalic
" highlight link TSFunction GreenItalic
