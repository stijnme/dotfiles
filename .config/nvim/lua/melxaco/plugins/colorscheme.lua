-- return {
--   "bluz71/vim-nightfly-colors",
--   name = "nightfly",
--   lazy = false,
--   priority = 1000,
--   -- config = function()
--   --   -- load the colorscheme here
--   --   vim.cmd([[colorscheme nightfly]])
--   -- end,
--   "EdenEast/nightfox.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     -- load the colorscheme here
--     vim.cmd("colorscheme nightfox")
--   end,
-- }

return {
  "nicoschoenteich/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
--    print(os.time() .. " [D] nightfox config running")
    require("nightfox").setup({
      options = {
        transparent = true,
          styles = {
            comments = "italic"
          }
        }
    })
    vim.cmd("colorscheme saptecheddarkfox")
    --vim.cmd("colorscheme saptechedlightfox")
  end
}

-- [ ] This isn't working for some reason, need to investigate later
-- The problem is that the file explorer of nvim-tree is using the incorrect background color
-- Check with:
-- :hi NvimTreeNormal
-- :hi Normal
--
-- return {
--   "nicoschoenteich/nightfox.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     options = {
--       transparent = true,
--         styles = {
--           comments = "italic"
--         }
--     },
--   },
--   config = function()
--     print(os.time() .. " [D] nightfox config running")
--     vim.api.nvim_create_autocmd("VimEnter", {
--       callback = function()
--         vim.cmd("colorscheme saptecheddarkfox")
--       end,
--     })
--   end,
-- }
