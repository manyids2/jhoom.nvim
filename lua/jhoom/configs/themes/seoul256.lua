vim.cmd [[set termguicolors]]

-- Example config in lua
vim.g.seoul256_italic_comments = true
vim.g.seoul256_italic_keywords = true
vim.g.seoul256_italic_functions = true
vim.g.seoul256_italic_variables = false
vim.g.seoul256_contrast = true
vim.g.seoul256_borders = false
vim.g.seoul256_disable_background = false
vim.g.seoul256_hl_current_line = true

-- Load the colorscheme
require('seoul256')
