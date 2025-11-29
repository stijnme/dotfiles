return {
  -- autocompletion
  "hrsh7th/nvim-cmp",   -- completion engine plugin
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path",   -- source for file system paths
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      -- snippet = {
      --   expand = function(args)
      --     vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      --   end,
      -- },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- add lsp as a source, see ../lsp/autocmp-nvim-lsp.lua
        { name = 'buffer' },
        { name = 'path' },
      })
    })
  end,
}
