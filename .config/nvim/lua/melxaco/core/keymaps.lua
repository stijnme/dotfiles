print("[D] Loading keymaps (core.keymaps)")

vim.g.mapleader=" " -- default in vim is backspace

local keymap = vim.keymap

--keymap.set("n","j","jzz")
--keymap.set("n","k","kzz")

-- nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- find rectent files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- copy to clipboard
keymap.set("v", "<leader>c", ":w !clip.exe") -- See: https://stackoverflow.com/questions/61550552/how-to-copy-paste-from-vim-in-wsl

-- copilot
keymap.set("n", "<leader>cop", "<cmd>Copilot<cr>") -- list 10 copilot suggestions

-- obsidian
keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<cr>") -- open current file in obsidian
