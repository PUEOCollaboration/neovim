require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")





-- The plugin osc52's copy/paste commands (suggested mapping, see its repo for more info)
--   Normal mode example: <leader>cj would copy everything on current line + next line (j)
--   TO THE SYSTEM CLIPBOARD!!! How nice is that!
map('n', '<leader>c', require('osc52').copy_operator, {expr = true})
-- Similarly, the following copies entire line
map('n', '<leader>cc', '<leader>c_', {remap = true})
-- Lastly, this also works in visual mode! Sweet!!!!
map('v', '<leader>c', require('osc52').copy_visual)



-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
