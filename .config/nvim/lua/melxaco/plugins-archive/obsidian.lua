-- import obsidian safely
local obsidian_setup, obsidian = pcall(require, "obsidian")
if not obsidian_setup then
  return
end

obsidian.setup({
  -- configure workspaces 
})
