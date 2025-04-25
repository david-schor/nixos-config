local colors = require("colorscheme")

require("catppuccin").setup({
    flavour = "macchiato",
    color_overrides = {
    macchiato = {
      base      = colors.background,
      mantle    = colors.background,
      crust     = colors.gray_alt,

      text      = colors.foreground,
      subtext1  = colors.gray,
      subtext0  = colors.select_fore,

      surface0  = colors.select_back,
      surface1  = colors.gray_alt,
      surface2  = colors.black,

      overlay0  = colors.red_alt,
      overlay1  = colors.green_alt,
      overlay2  = colors.blue_alt, 

      blue      = colors.gray, -- style
      red       = colors.red,
      green     = colors.green,
      yellow    = colors.yellow,
      magenta   = colors.magenta,
      pink      = colors.magenta_alt,
      teal      = colors.cyan_alt,
      sky       = colors.cyan,

      lavender  = colors.blue_alt,
      peach     = colors.yellow_alt,
      rosewater = colors.red_alt,
      flamingo  = colors.red,
      sapphire  = colors.cyan,

      -- Cursor / Auswahl etc.
      cursor    = colors.cursor,
        },
    },
    custom_highlights = function(colors)
        return {
		DashboardHeader = { fg = colors.white },
            CursorLine = { bg = colors.mantle },
            LineNr = { fg = colors.surface0 },
            Comment = { fg = colors.surface1, italic = true },
        }
    end
})

vim.cmd.colorscheme("catppuccin")
