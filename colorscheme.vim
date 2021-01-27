" Important!!                                                                                                                                                      
if has('termguicolors')                                                                                                                                            
  set termguicolors                                                                                                                                                
endif                                                                                                                                                              
                                                                                                                                                                   
" The configuration options should be placed before `colorscheme sonokai`.                                                                                         
let g:sonokai_style = 'andromeda'                                                                                                                                  
let g:sonokai_enable_italic = 1                                                                                                                                    
let g:sonokai_disable_italic_comment = 1
let g:airline_theme = 'sonokai'
colorscheme sonokai

" LspReference{Text,Read,Write} have bright background color that doesn't work
" for me. For some reason, simply running an autocmd doesn't seem to work, 
" probably since those colors are set at a later time by lsp (guessing).
" Thus creating a function and binding it to <Ctrl l>.
function FixLspReferenceHighlight()
  :highlight LspReferenceText ctermbg=236 guibg=#363a4e
  :highlight LspReferenceRead ctermbg=236 guibg=#363a4e
  :highlight LspReferenceWrite ctermbg=236 guibg=#363a4e
  " echo "FixLspReferenceHighlight done"
endfunction

autocmd UiEnter,GUIEnter,VimEnter,ColorScheme * call FixLspReferenceHighlight()

nmap  <C-l> :call FixLspReferenceHighlight()<CR>
