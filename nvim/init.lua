

-- @@@@@@@@@@@@@@@@@@@@ NvChad Default Setting @@@@@@@@@@@@@@@@@@@@@
--------------------------------------------------------------------
require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"




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





-- @@@@@@@@@@@@@@@@@@@@ Additional Setting @@@@@@@@@@@@@@@@@@@@@
require "xirong.keymaps"









