local M = {}

M.setup = function()
    local groups = require("devgirlunderscorecolorscheme.groups").setup()
    for group, setting in pairs(groups) do
        vim.api.nvim_set_hl(0, group, setting)
    end
end

M.setup_lualine = function()
    local ok, lualine = pcall(require, "lualine")
    if not ok then
        vim.notify("devgirlunderscorecolorscheme: lualine not found, skipping lualine setup", vim.log.levels.WARN)
        return
    end
    lualine.setup({
        options = {
            theme = require("devgirlunderscorecolorscheme.lualine_theme"),
            component_separators = '',
            section_separators = { left = '\u{e0b6}', right = '\u{e0b4}' },
        },
        sections = {
            lualine_a = { { 'mode', separator = { left = '\u{e0b6}' }, right_padding = 2 } },
            lualine_b = { 'filename', 'branch' },
            lualine_c = { '%=' },
            lualine_x = {},
            lualine_y = { 'filetype', 'progress' },
            lualine_z = { { 'location', separator = { right = '\u{e0b4}' }, left_padding = 2 } },
        },
        inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
        },
        tabline = {},
        extensions = {},
    })
end

return M
