print("[D] Colorscheme loading (melxaco.core.colorscheme)")

return {
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  lazy = false,
  priority = 1000,
  -- config = function()
  --   -- load the colorscheme here
  --   vim.cmd([[colorscheme nightfly]])
  -- end,
  "EdenEast/nightfox.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- load the colorscheme here
    vim.cmd("colorscheme nightfox")
  end,
}
