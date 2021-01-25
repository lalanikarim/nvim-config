" region dartFold already part of dart syntax file
" autocmd BufWinEnter * syn region dartFold start="{" end="}" transparent fold
autocmd BufWinEnter *.dart syn region flutterWidgetBlock start="(" end=")" transparent fold
autocmd BufWinEnter *.dart syn region flutterWidgetListBlock start="\[" end="]" transparent fold
autocmd BufWinEnter *.dart syn sync fromstart

" enable code folding
autocmd BufWinEnter *.dart set foldmethod=syntax

" previous command auto-folds code. unfold code on opening file.
autocmd BufWinEnter *.dart normal zR

" load previously saved code folding view for the current file on start
autocmd BufWinEnter *.dart silent! loadview

" save code folding view for the current file on exit
autocmd BufWinLeave *.dart mkview
