--print(os.time() .. " [D] mason config running")
return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "bashls",
--    "clangd",
--    "cmake",
      "cds_lsp",
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
      -- Next lines only for testing with changes on local mason registry
      -- config = function()
      --   require("mason").setup {
      --     print(os.time() .. " [D] mason config running"),
      --     registries = { -- add local registry for testing
      --     "file:~/Development/personal/mason-registry"
      --   }
      -- }
      -- end,
    },
    {
      "nvim-lspconfig", -- see other config file
    }
  },
}
