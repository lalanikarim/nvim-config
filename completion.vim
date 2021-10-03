" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Don't auto load completion recommendations
let g:completion_enable_auto_popup = 0

" use <Tab> as trigger keys
" imap <Tab> <Plug>(completion_smart_tab)
" imap <S-Tab> <Plug>(completion_smart_s_tab)
"
" Completion is triggered by Ctrp+p
imap <silent> <c-p> <Plug>(completion_trigger)

" Include options from snippets along with completions
" possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_confirm_key = "\<C-y>"

" Disable auto hover and auto signature on cursor
"let g:completion_enable_auto_hover = 0
"let g:completion_enable_auto_signature = 0

" possible value: "length", "alphabet", "none"
let g:completion_sorting = 'alphabet' 

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

" either ignore_case or smart_case
" let g:completion_matching_ignore_case = 1
let g:completion_matching_smart_case = 1

" let g:completion_trigger_character = ['.', '::']
" augroup CompletionTriggerCharacter
"    autocmd!
"    autocmd BufEnter * let g:completion_trigger_character = ['.']
"    autocmd BufEnter *.c,*.cpp let g:completion_trigger_character = ['.', '::']
" augroup end

let g:completion_trigger_keyword_length = 3

" trigger completion on delete
let g:completion_trigger_on_delete = 1

" let g:completion_timer_cycle = 200 "default value is 80

autocmd BufEnter * lua require('completion').on_attach()
