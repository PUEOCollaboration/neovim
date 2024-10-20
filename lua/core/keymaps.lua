local map = require("helpers.keys").map

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Better window navigation 
map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

-- Move with shift-arrows
map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows 
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<Leader>x", buffers.delete_this, "Current buffer")
-- note: these two don't work
-- map("n", "<Leader>o", buffers.delete_others, "Other buffers")
-- map("n", "<Leader>d", buffers.delete_all, "All buffers") 

-- Navigate buffers
map("n", "<tab>", ":bnext<CR>")
map("n", "<S-tab>", ":bprevious<CR>")


-- Switch between light and dark modes
map("n", "<leader>th", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Toggle between light and dark themes")

-- Clear highlight after search (i.e. "/")
map("n", "<Esc>", "<cmd>nohl<cr>", "Clear highlights")


--| Vim folding commands
--| ---------------------------------
--| zf#j creates a fold from the cursor down # lines.
--| zf/ string creates a fold from the cursor to string .
--| zj moves the cursor to the next fold.
--| zk moves the cursor to the previous fold.
--| za toggle a fold at the cursor.
--| zo opens a fold at the cursor.
--| zO opens all folds at the cursor.
--| zc closes a fold under cursor. 
--| zm increases the foldlevel by one.
--| zM closes all open folds.
--| zr decreases the foldlevel by one.
--| zR decreases the foldlevel to zero -- all folds will be open.
--| zd deletes the fold at the cursor.
--| zE deletes all folds.
--| [z move to start of open fold.
--| ]z move to end of open fold.
-- 
-- note: the fold is set by Treesitter (see treesitter.lua) so some of these general vim commands
-- might not work in neovim.
--
