
-- @@@@@@@@@@@@@@@@@@@@ keybinding pattern @@@@@@@@@@@@@@@@@@@@@
-- vim.api.nvim_set_keymap( {mode}, {keymap{, {mapped_to}, {options} )
-- 1. Global Options (vim.opt)
-- 2. Local to Window (vim.wo)
-- 3. Local to buffer (vim.bo)
-- 4. Reload configuration (:so ~/.config/nvim/init.lua | :so %)
-- 5. <CR> means "enter" key


-- < set {options} placeholder >
local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }

-- < set shorten function name for vim.api.nvim_set_keymap, so don't need to type each time mapping keys >
local keymap = vim.api.nvim_set_keymap


-- @@@@@@@@@@@@@@@@@@@@ General Keymaps @@@@@@@@@@@@@@@@@@@@@ --



-- Normal Mode: 
-- keymap("n", "<C-s>", ":w<CR>", opts)  -- if cmd + s can't be used in the future, modify autosave here

keymap("n", "nh", ":nohl<CR>", opts)  -- cancel search/match highlighting, type "nh" in normal mode
keymap("n", "x", '"_x', opts)         -- cancel x for copy, only used for delete

-- Insert Mode 
-- keymap("i", "<leader>s", "<ESC>:w<CR>", opts)

-- Visual Mde 
keymap("v", "<", "<gv", opts)   -- right indentation
keymap("v", ">", ">gv", opts)   -- left indentation

