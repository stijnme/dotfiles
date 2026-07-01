return {
  "neovim/nvim-lspconfig",
  settings = {
    Lua = { -- avoid "undefined global" diagnostic error for vim global when using lua_ls
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
