-- Set background FIRST — setting it after colors_name triggers a colorscheme reload in Neovim
vim.o.background = "light"
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "devgirlunderscorecolorscheme"

require("devgirlunderscorecolorscheme").setup()
