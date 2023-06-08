
-- override ctrl + hjkl for moving inside neovim split :sp/vsp
local M ={}

M.general = {
  n = {
    ["<C-h"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

return M
