return {
-- original repo, but error in healthcheck
--  "ekickx/clipboard-image.nvim",
  "postfen/clipboard-image.nvim",
  config = function()
    local clipimg = require("clipboard-image")

    clipimg.setup({
      -- Default configuration for all filetype
      default = {
        img_dir = "_resources",
        img_dir_txt = "_resources",
        --img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end, -- Example result: "2021-04-13-10-04-18"
        img_name = function ()
          vim.fn.inputsave()
          local name = vim.fn.input('[📷] Image name: ')
          vim.fn.inputrestore()
          return name
        end,
        affix = "<\n  %s\n>" -- Multi lines affix
      },
    })
  end
}
