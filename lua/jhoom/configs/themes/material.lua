-- [[
--
--  + Oceanic:~
--      This is the default style that will be applied by default.
--      It uses a soft and darkish blue background, and a teal accent
--      color.
--
--  + Deep Ocean:~
--      This style comes with a really dark background and a cyan accent
--      color.
--
--  + Palenight:~
--      This style is based on the Palenight color theme, but with the
--      material color palette applied to it. It has a blueish gray background
--      and a purple accent color.
--
--  + Darker:~
--      This style is loosely based on the Gruvbox color theme. It has a brown
--      background and orange accent color.
--
--  + Lighter:~
--      This is the only light style in this colorscheme. It comes with a
--      white background and a light blue accent color. It is a bit low on
--      contrast, but there is an option to increase the contrast of this
--      style for those that want more visibilty.
-- ]]

vim.cmd [[set termguicolors]]
vim.g.material_style = "oceanic"

vim.cmd [[colorscheme material]]
