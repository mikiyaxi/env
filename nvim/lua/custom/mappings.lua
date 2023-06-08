
local M = {}

 -- override NvChad default window navigation for tmux and neovim 
M.general = {
  n = {
    ["<C-h"] = { "<cmd> TmuxNavigatieLeft<CR>", "window left" },
    ["<C-l"] = { "<cmd> TmuxNavigatieRight<CR>", "window right" },
    ["<C-j"] = { "<cmd> TmuxNavigatieDown<CR>", "window down" },
    ["<C-k"] = { "<cmd> TmuxNavigatieUp<CR>", "window up" },
  }
}




return M
