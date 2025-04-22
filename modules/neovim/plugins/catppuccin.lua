require("catppuccin").setup({
    flavour = "mocha", -- Basis-Flavour als Grundlage
    color_overrides = {
        mocha = {
            base = "#0d1b2a",       -- Hintergrund
            mantle = "#1b263b",
            crust = "#0d1b2a",

            text = "#e0e1dd",       -- Vordergrund
            surface2 = "#a2bfe5",
            surface1 = "#7d91b7",
            surface0 = "#1b263b",

            rosewater = "#ffe0b2",  -- leicht rosa
            flamingo = "#ffb4a2",   -- rötlich
            pink     = "#ff8e72",   -- Cursor
            mauve    = "#e26a6a",   -- rot
            red      = "#f07178",
            maroon   = "#ff8e72",
            peach    = "#ffc49b",
            yellow   = "#ffe0b2",
            green    = "#94d2bd",
            teal     = "#94e2d5",
            sky      = "#a2bfe5",
            sapphire = "#7d91b7",
            blue     = "#7d91b7",
            lavender = "#b5ead7",   -- soft-grünlich
            subtext1 = "#e0e1dd",
        },
    },
    custom_highlights = function(colors)
        return {
            CursorLine = { bg = colors.mantle },
            Cursor = { fg = "#0d1b2a", bg = "#ff8e72" }, -- Cursor Farbe aus Ghostty
            Visual = { bg = "#1b263b", fg = "#ffffff" }, -- Selection Farben
        }
    end
})

-- Theme aktivieren
vim.cmd.colorscheme("catppuccin")
