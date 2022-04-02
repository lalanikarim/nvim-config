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

" autocmd BufEnter * lua require('completion').on_attach()


lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })
EOF
