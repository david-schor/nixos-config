require('bufferline').setup({
  options = {
    numbers = "none",
    close_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    indicator = {
      style = "icon",
      icon = "▎",
    },
    buffer_close_icon = "",
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    always_show_bufferline = true,
    separator_style = "thin",
    enforce_regular_tabs = false,
    persist_buffer_sort = true,
  },
})

vim.api.nvim_set_keymap('n', '<C-h>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
