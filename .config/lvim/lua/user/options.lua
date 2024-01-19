lvim.format_on_save = true

lvim.colorscheme = "catppuccin-frappe"
vim.o.background = "dark"

vim.opt.number = true
vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.list = false
vim.opt.scrolloff = 0
lvim.transparent_window = true
lvim.use_icons = false
vim.opt.guifont = "Hack Nerd Font Mono:h12"
lvim.use_icons = true
vim.opt.termguicolors = true
vim.o.autoindent = true
vim.o.shiftwidth = 2

vim.notify = require("telescope").load_extension("notify")

-- Fold
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
