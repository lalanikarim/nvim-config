local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  
  if client.resolved_capabilities.declaration then
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  end
  
  if client.resolved_capabilities.goto_definition then
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  end

  if client.resolved_capabilities.hover then
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  end

  if client.resolved_capabilities.implementation then
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  end

  if client.resolved_capabilities.signature_help then
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  end
  
  buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  
  if client.resolved_capabilities.type_definition then
    buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  end

  if client.resolved_capabilities.rename then
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  end

  if client.resolved_capabilities.find_references then
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  end

  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end

  buf_set_keymap('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opts)
  buf_set_keymap('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)


  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.cmd(":hi LspReferenceRead ctermbg=236 guibg=#363a4e cterm=bold gui=bold")
    vim.cmd(":hi LspReferenceText ctermbg=236 guibg=#363a4e cterm=bold gui=bold")
    vim.cmd(":hi LspReferenceWrite ctermbg=236 guibg=#363a4e cterm=bold gui=bold")

    vim.cmd("augroup lsp_document_highlight")
    vim.cmd("autocmd!")
    vim.cmd("autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()")
    vim.cmd("autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()")
    vim.cmd("augroup END")
    
    --[[
    require('lspconfig').util.nvim_multiline_command [[
      :hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      :hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      :hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
    --]]
  end
end
-- require'cmp'.setup {
--   sources = {
--     { name = 'nvim_lsp' }
--   }
-- }

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('coq').lsp_ensure_capabilities(capabilities)

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { 
  "pylsp", 
  "rust_analyzer", 
  "tsserver",
  "cmake", 
  "vimls",
  "clangd", 
  "jsonls", 
  "metals", 
  "vuels",
  "html", 
  "graphql", 
  "yamlls",
  "phpactor", 
  "intelephense",
  "elmls",
  }
for idx, lsp in ipairs(servers) do
--  print("Processing LSP: " .. lsp)
  if not nvim_lsp[lsp] then
--    print("LSP: " .. lsp .. " missing")
  else
    nvim_lsp[lsp].setup { 
      capabilities = capabilities,
      on_attach = on_attach 
    }
  end
end

require("flutter-tools").setup {
  closing_tags = {
    -- highlight = "ErrorMsg",
    prefix = "// "
  },
  dev_log = {
    open_cmd = "tabedit",
  },
  outline = {
    open_cmd = "30vnew",
  },
  lsp = {
    on_attach = on_attach,
    -- capabilities = my_custom_capabilities -- e.g. lsp_status capabilities
  }
}

--[[ 
  Lua Language Server 'sumneko_lua' is under 'Projects/lua-language-server' 
  folder in my user home folder on my machine.
  Language Server stand-alone is built with instructions here:
  https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
  Language Server starter lspconfig can be found here:
  https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#sumneko_lua
  Only sumneko_root_path has been adjusted for my local setup.
--]]

local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumneko_root_path = vim.fn.expand('$HOME/Projects')..'/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
  on_attach = on_attach,
}

require'lspconfig'.gopls.setup {
  cmd = {"gopls", "serve"},
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  on_attach = on_attach;
}

require'lspconfig'.yamlls.setup {
  settings = {
    yaml = {
      schemas = {
        kubernetes = "/*",
      },
    },
  },
  root_dir = nvim_lsp.util.root_pattern("*.yaml"),
  on_attach = on_attach,
  capabilities = capabilities,
}

require'lspconfig'.elixirls.setup {
  cmd = {
    vim.fn.expand("$HOME/.elixir-ls/language_server.sh"),
  },
  on_attach = on_attach,
  capabilities = capabilities,
  on_attach = on_attach;
}

local pid = vim.fn.getpid()
local omnisharp_bin = vim.fn.expand("$HOME/.omnisharp/run")
require'lspconfig'.omnisharp.setup {
  cmd = {
    omnisharp_bin,
    "--languageserver",
    "--hostPID",
    tostring(pid)
  };
  on_attach = on_attach;
}

-- require('lspsaga').init_lsp_saga()
