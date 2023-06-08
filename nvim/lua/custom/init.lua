
-- @@@@@@@@@@@@@@@@@@@@ Automactic Setting @@@@@@@@@@@@@@@@@@@@@
-- auto command (autocmd.lua): setting some auto action for neovim 
------------------------------------------------------------------

local agrp = vim.api.nvim_create_augroup
local acmd = vim.api.nvim_create_autocmd

-- leaving neovim and set the cursor style to horizontal shope
local exitCursor = agrp("RestoreCursorShapeOnExit", { clear = true })

acmd({ "VimLeave" },
      { pattern = "*",
        command = "set guicursor=a:hor10",
        group = exitCursor,})



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
keymap("n", "<C-s>", ":w<CR>", opts)  -- for other terminals that can't map cmd + s as autosave
keymap("n", "nh", ":nohl<CR>", opts)  -- cancel search/match highlighting, type "nh" in normal mode
keymap("n", "x", '"_x', opts)         -- cancel x for copy, only used for delete

-- Insert Mode 
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)





--@@@@@@@@@@@ catppuccin color palettes @@@@@@@@@@@@--

-- local color_palette = {
-- 	rosewater = "#F5E0DC",
-- 	flamingo = "#F2CDCD",
-- 	pink = "#F5C2E7",
-- 	mauve = "#CBA6F7",
-- 	red = "#F38BA8",
-- 	maroon = "#EBA0AC",
-- 	peach = "#FAB387",
-- 	yellow = "#F9E2AF",
-- 	green = "#A6E3A1",
-- 	teal = "#94E2D5",
-- 	sky = "#89DCEB",
-- 	sapphire = "#74C7EC",
-- 	blue = "#89B4FA",
-- 	lavender = "#B4BEFE",
--
-- 	text = "#CDD6F4",
-- 	subtext1 = "#BAC2DE",
-- 	subtext0 = "#A6ADC8",
-- 	overlay2 = "#9399B2",
-- 	overlay1 = "#7F849C",
-- 	overlay0 = "#6C7086",
-- 	surface2 = "#585B70",
-- 	surface1 = "#45475A",
-- 	surface0 = "#313244",
--
-- 	base = "#1E1E2E",
-- 	mantle = "#181825",
-- 	crust = "#11111B",
-- }
--
-- return color_palette
