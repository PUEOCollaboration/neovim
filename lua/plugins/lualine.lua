
return
{
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    local colorscheme = require("helpers.colorscheme")
    local lualine_theme = colorscheme == "default" and "auto" or colorscheme
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = lualine_theme,
        component_separators = "|",
        -- section_separators = "",
      },
      sections = {
        lualine_a = {'branch',},
        lualine_b = {'diff'},
        lualine_c = {'diagnostics'},
        lualine_x = {
          {
            "buffers",
            symbols = {
              alternate_file = "",
              modified = " ● ",
            },
          },
        },
        lualine_y = {''},
        lualine_z = {''}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {''},
        lualine_y = {},
        lualine_z = {}
      },

    })
  end,
}
