call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'vimwiki/vimwiki'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Replacing Fzf with Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'StanAngeloff/php.vim'
Plug 'gko/vim-coloresque'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
Plug 'glepnir/lspsaga.nvim'
" Plug 'lalanikarim/vim-simplefold'
Plug 'elixir-editors/vim-elixir'
call plug#end()

