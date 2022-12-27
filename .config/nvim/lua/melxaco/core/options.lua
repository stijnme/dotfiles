local opt = vim.opt

-- line numbers
opt.number=true  --show line numbers
opt.relativenumber=true --show relative line numbers

-- tabs & indentation
opt.expandtab=true
opt.autoindent=true
opt.tabstop=2
opt.shiftwidth=2

-- line wrapping
opt.wrap=false

-- search settings
opt.ignorecase=true --default search with lowercase search term ignores the case in the result
opt.smartcase=true --when using uppercase in search term, it will be taken into account

-- appearance
opt.termguicolors=true -- for use with iterm2
opt.background="dark"
opt.signcolumn="yes"

--clipboard
opt.clipboard:append("unnamedplus") --use system clipboard buffer
