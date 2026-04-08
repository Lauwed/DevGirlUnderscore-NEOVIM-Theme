local c = require("devgirlunderscorecolorscheme.palette")

return {
    normal = {
        a = { fg = c.white,  bg = c.magenta },
        b = { fg = c.black,  bg = c.white },
        c = { fg = c.black,  bg = "NONE" },
    },
    insert  = { a = { fg = c.white, bg = c.blue } },
    visual  = { a = { fg = c.white, bg = c.cyan } },
    replace = { a = { fg = c.white, bg = c.red } },
    inactive = {
        a = { fg = c.black, bg = c.white },
        b = { fg = c.black, bg = c.white },
        c = { fg = c.black, bg = c.white },
    },
    winbar = {
        c = { fg = c.bright_black, bg = "NONE" },
    },
    inactive_winbar = {
        c = { fg = c.bright_black, bg = c.white },
    },
}
