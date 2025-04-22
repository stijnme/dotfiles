return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },

  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "bashls",
--      "clangd",
--      "cmake",
        "cds-lsp",
        "cssls",
        "eslint",
        "html",
        "jsonls",
        "lua_ls",
        "ts_ls",
        "sqlls",
        "yamlls"
      },
      automatic_installation = true,
    })

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
  end,
}
