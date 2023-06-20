---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["YY"] = { "va{Vy", "Copy whole function", opts = { nowait = true } },
    ["<leader>q"] = { "<Esc>:q <CR>", "Exit file", opts = { nowait = true } },
    ["<leader>s"] = { "<Esc>:w <CR>", "Save File", opts = { nowait = true } },
  },
}
-- more keybinds!

return M
