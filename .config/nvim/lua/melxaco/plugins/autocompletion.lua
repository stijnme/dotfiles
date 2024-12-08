return {
  -- autocompletion
  "hrsh7th/nvim-cmp",   -- completion plugin
  "hrsh7th/cmp-buffer", -- source for text in buffer
  "hrsh7th/cmp-path",   -- source for file system paths

  "hrsh7th/cmp-nvim-lsp", -- integrate with lsp for autocompletion
  dependencies = { "neovim/nvim-lspconfig" }
}
