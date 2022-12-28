local setup, tree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from docu to disable netrw
vim.g.load=1
vim.g.loaded_netrwPlugin=1

tree.setup({
-- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  }
})
