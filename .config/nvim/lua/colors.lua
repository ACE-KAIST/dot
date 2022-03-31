local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

if vim.fn.has("termguicolors") then
  opt.termguicolors = true
end

cmd[[colorscheme gruvbox-baby]]
vim.g.gruvbox_baby_function_style = "bold"
vim.g.gruvbox_baby_keyword_style = "italic"

require("indent_blankline").setup {
    char = "¦",
    show_trailing_blankline_indent = false,
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
      "IndentBlanklineIndent1",
    }
}

require"lualine".setup {
  options = {
    icons_enabled = true,
    disabled_filetypes = {},
    -- You can add icons if you use nerdfonts
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {
      {
        "branch",
        -- You can add icons_enabled as true if you use nerdfonts
        icons_enabled = false,
      },
      {
        "diff",
        colored = true, -- displays diff status in color if set to true
        symbols = {added = "+", modified = "~", removed = "-"} -- changes diff symbols
      },
    },
    lualine_c = {"filename"},
    lualine_x = {"encoding", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
