print("[D] Loading custom LSP configuration for cds_lsp...")

-- (re)configure the CDS Language Server Protocol (LSP) for Neovim
-- These settings will overwrite the defaults defined in nvim-lspconfig
--
return {
  cmd = { "cds-lsp" },
  filetypes = { "cds" },
  -- root_markers = {
  --   ".git",
  --   "app",
  --   "db",
  --   "srv",
  --   "package.json",
  -- },
}


-- -- cds-lsp
-- lspconfig["cds_lsp"].setup({
--   capabilities = capabilities,
--   on_attach = on_attach,
-- })
