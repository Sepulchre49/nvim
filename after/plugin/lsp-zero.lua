local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "clangd", "tsserver", "java_language_server", "lua_ls", "jedi_language_server"},
  handlers = {
    lsp_zero.default_setup,
  },
})
