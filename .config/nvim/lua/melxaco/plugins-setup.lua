local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use "nvim-lua/plenary.nvim" -- lua functions used by many plugins

  use "EdenEast/nightfox.nvim" -- colorscheme

  use "numToStr/Comment.nvim" -- comments with gc

  use "nvim-tree/nvim-tree.lua" -- file explorer
--  use "kyazdani42/nvim-web-devicons" -- file icons
  use "nvim-tree/nvim-web-devicons"  -- file icons

  use "nvim-lualine/lualine.nvim" -- statusbar

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  -- use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use { -- issue on current main branch: https://github.com/nvimdev/lspsaga.nvim/issues/555
    'glepnir/lspsaga.nvim',
    commit = 'ae099d5844b005cec66a66ab30a44d3bf8867af9',
  }
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  use("ThePrimeagen/vim-be-good") -- vim game to practice movements

  -- AI
  -- use('Exafunction/codeium.vim') -- replaced with Copilot

  -- Markdown
  -- Follow markdown links in normal mode with <cr>
  use("jghauser/follow-md-links.nvim")
  -- Make sure following 2 TSInstall plugins are installed:
  -- * markdown
  -- * markdown_inline
  -- cmd: TSInstall markdown markdown_inline

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
