-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- test this code from chatgpt
local handle = io.popen("awk '/background/ {print $2}' ~/.config/kitty/theme.conf")
local bg_color = handle:read("*a")
handle:close()

-- -- light and dark mode
-- if bg_color:find("#EFF1F5") then
--   vim.cmd("colorscheme catppuccin-latte")
-- elseif bg_color:find("#191724") then
--   vim.cmd("colorscheme rose-pine")
-- else
--   vim.cmd("colorscheme catppuccin-mocha")
-- end
