" autocmd BufWinEnter *.php syn region phpCodeFold start="{" end="}" transparent fold

" autocmd BufWinEnter *.php syn sync fromstart

" enable code folding
" autocmd BufWinEnter *.php set foldmethod=syntax

" previous command auto-folds code. unfold code on opening file.
" autocmd BufWinEnter *.php normal zR

" load previously saved code folding view for the current file on start
" autocmd BufWinEnter *.php silent! loadview

" save code folding view for the current file on exit
" autocmd BufWinLeave *.php mkview

"map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr>

"let g:DisableAutoPHPFolding = 1

"autocmd BufWinEnter *.php EnableFastPHPFolds
"autocmd BufWinEnter *.php normal zR
