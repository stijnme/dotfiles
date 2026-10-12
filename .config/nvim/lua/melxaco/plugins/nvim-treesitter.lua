local languages = {
  "json",
  "javascript",
  "typescript",
  "tsx",
  "yaml",
  "html",
  "css",
  "bash",
  "vim",
  "dockerfile",
  "gitignore",
  "xml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter").install(languages)
  end,
--     local configs = require("nvim-treesitter.configs")
--
--     configs.setup({
-- -- ensure these language parsers are installed
--       ensure_installed = {
--         "json",
--         "javascript",
--         "typescript",
--         "tsx",
--         "yaml",
--         "html",
--         "css",
-- --    "markdown", -- compile errors while installing
-- --    "markdown_inline",
--         "bash",
--         "lua",
--         "vim",
--         "dockerfile",
--         "gitignore", -- requires tree-sitter cli
--         "xml",
--       },
       sync_install = false,
       highlight = { enable = true },
       indent = { enable = true },  
--     })
--   end
}
