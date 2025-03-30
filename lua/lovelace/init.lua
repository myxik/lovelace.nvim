local M = {}

-- Load color palette
local palette = require("lovelace.palette")

-- Configure highlights
function M.setup()
  vim.opt.termguicolors = true
  vim.g.colors_name = "lovelace"

  local highlights = {
    -- Base UI
    Normal = { fg = palette.fg, bg = palette.bg },
    NormalFloat = { fg = palette.fg, bg = palette.bg },
    EndOfBuffer = { fg = palette.bg }, -- Hide ~ tildes
    LineNr = { fg = palette.gray1 },
    CursorLineNr = { fg = palette.fg, bold = true },
    VertSplit = { fg = palette.bg, bg = palette.bg },
    SignColumn = { bg = palette.bg },

    -- Syntax
    Comment = { fg = palette.gray1 },
    String = { fg = palette.orange },
    Number = { fg = palette.purple },
    Boolean = { fg = palette.purple },
    Function = { fg = palette.blue },
    Identifier = { fg = palette.cyan },
    Keyword = { fg = palette.red },
    Type = { fg = palette.aqua },
    Operator = { fg = palette.fg },

    -- Diagnostics
    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.orange },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.cyan },

    -- Git
    DiffAdd = { fg = palette.green },
    DiffDelete = { fg = palette.red },
    DiffChange = { fg = palette.yellow },
    DiffText = { fg = palette.orange },

    -- Plugins
    TelescopeBorder = { fg = palette.gray1 },
    LspFloatWinNormal = { bg = palette.bg },
  }

  -- Apply highlights
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Terminal colors
  for i, color in ipairs(palette.terminal_colors) do
    vim.g["terminal_color_" .. (i-1)] = color
  end
end

return M
