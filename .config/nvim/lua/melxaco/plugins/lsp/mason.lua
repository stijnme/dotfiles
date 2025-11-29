--print(os.time() .. " [D] mason config running")
return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "bashls",
      "bashls",
--    "clangd",
--    "cmake",
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
  },
  dependencies = { -- following need to load before mason-lspconfig
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      },
    },
    {
      "nvim-lspconfig", -- see other config file
    }
  },
}
