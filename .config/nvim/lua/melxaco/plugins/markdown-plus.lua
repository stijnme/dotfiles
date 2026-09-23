return {
  "yousefhadder/markdown-plus.nvim",
  ft = "markdown",
  opts = {  -- Required: calls setup() with default options
    keymaps = {
      enabled = true, -- master toggle for default markdown-plus keymaps
    },
    table = {
      keymaps = {
        enabled = true, -- table feature keymaps
      },
    },
  },
}
