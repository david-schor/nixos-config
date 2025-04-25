local telescope = require("telescope")
local icons = require("nvim-web-devicons")

telescope.setup({
  defaults = {
    prompt_prefix = "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
  pickers = {},
  extensions = {},
})

vim.keymap.set("n", "<Leader>f", require("telescope.builtin").find_files)
