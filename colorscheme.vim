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
highlight Normal guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight ColorColumn ctermbg=236 guibg=#333648
