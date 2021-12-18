"      _      _ __             _     
"     (_)__  (_) /_  ___ _  __(_)_ _ 
"    / / _ \/ / __/ / _ \ |/ / /  ' \
"   /_/_//_/_/\__(_)_//_/___/_/_/_/_/
                                 
set number 
set relativenumber
set nocompatible
set encoding=utf-8
set tabstop=4
set expandtab 
set shiftwidth=4 
set softtabstop=4 
set smartindent 
set autoindent
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline
set nofoldenable
set colorcolumn=80

source $HOME/.config/nvim/plugins.vim

syntax on
filetype plugin indent on
" colorscheme nord

source $HOME/.config/nvim/colorscheme.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/completion.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/vimwiki.vim

set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
" autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment" }


let g:dart_format_on_save = 1

source $HOME/.config/nvim/snippets.vim
source $HOME/.config/nvim/statusline.vim
source $HOME/.config/nvim/startify.vim
source $HOME/.config/nvim/signify.vim
source $HOME/.config/nvim/treesitter.vim

"luafile $HOME/.config/nvim/lspsaga.lua
