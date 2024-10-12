local map = require("helpers.keys").map

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Better window navigation (does not work with Kitty Terminal)
-- map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
-- map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
-- map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
-- map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

-- Move with shift-arrows
map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows (does not work with Kitty Terminal)
-- map("n", "<C-Up>", ":resize +2<CR>")
-- map("n", "<C-Down>", ":resize -2<CR>")
-- map("n", "<C-Left>", ":vertical resize +2<CR>")
-- map("n", "<C-Right>", ":vertical resize -2<CR>")

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

-- Clear after search
map("n", "<Esc>", "<cmd>nohl<cr>", "Clear highlights")


map('n', '<leader>c', ':set colorcolumn=100<CR>')
map('n', '<leader>nc', ':set colorcolumn-=100<CR>')



