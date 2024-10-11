local theme = "catppuccin-frappe"

local status_ok,_ = pcall(vim.cmd, "colorscheme " .. theme)
if not status_ok then
	print("colorscheme not found!")
	return
end
