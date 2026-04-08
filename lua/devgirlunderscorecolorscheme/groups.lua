local M = {}

local c = require("devgirlunderscorecolorscheme.palette")

M.setup = function()
    return {
        -- Base editor
        Normal                      = { bg = "NONE", fg = c.fg },
        NormalFloat                 = { bg = c.menu_bg, fg = c.fg },
        NormalNC                    = { bg = "NONE", fg = c.fg },
        EndOfBuffer                 = { fg = c.nontext },
        NonText                     = { fg = c.nontext },
        Whitespace                  = { fg = c.nontext },

        -- Cursor & selection
        Cursor                      = { bg = c.cursor, fg = c.bg },
        CursorLine                  = { bg = c.cursorline },
        CursorColumn                = { bg = c.cursorline },
        Visual                      = { bg = c.visual },
        VisualNOS                   = { bg = c.visual },

        -- Line numbers
        LineNr                      = { fg = c.linenr },
        CursorLineNr                = { fg = c.blue, bold = true },
        SignColumn                  = { bg = "NONE" },

        -- Search
        Search                      = { bg = c.search, fg = c.search_fg },
        IncSearch                   = { bg = c.cursor, fg = c.bg },
        CurSearch                   = { bg = c.cursor, fg = c.bg },

        -- Splits & borders
        VertSplit                   = { fg = c.split },
        WinSeparator                = { fg = c.split },

        -- Status line
        StatusLine                  = { bg = c.statusline_bg, fg = c.statusline_fg },
        StatusLineNC                = { bg = c.menu_bg, fg = c.linenr },

        -- Tabs
        TabLine                     = { bg = c.menu_bg, fg = c.linenr },
        TabLineSel                  = { bg = c.bg, fg = c.fg, bold = true },
        TabLineFill                 = { bg = c.menu_bg },

        -- Popup menu
        Pmenu                       = { bg = c.menu_bg, fg = c.fg },
        PmenuSel                    = { bg = c.menu_sel, fg = c.fg },
        PmenuSbar                   = { bg = c.menu_bg },
        PmenuThumb                  = { bg = c.split },

        -- Folds
        Folded                      = { bg = c.fold, fg = c.linenr },
        FoldColumn                  = { bg = c.bg, fg = c.linenr },

        -- Winbar
        WinBar                      = { bg = c.bg, fg = c.linenr },
        WinBarNC                    = { bg = c.menu_bg, fg = c.linenr },

        -- Message area (bottom of screen)
        MsgArea                     = { bg = c.white, fg = c.fg },
        MsgSeparator                = { bg = c.menu_bg, fg = c.split },

        -- Messages
        ErrorMsg                    = { fg = c.diag_error, bold = true },
        WarningMsg                  = { fg = c.diag_warn },
        ModeMsg                     = { fg = c.fg, bold = true },
        MoreMsg                     = { fg = c.blue },
        Question                    = { fg = c.blue },

        -- Syntax (vim built-in)
        Comment                     = { fg = c.comment, italic = true },
        Constant                    = { fg = c.blue },
        String                      = { fg = c.magenta },
        Character                   = { fg = c.magenta },
        Number                      = { fg = c.cyan },
        Boolean                     = { fg = c.cyan },
        Float                       = { fg = c.cyan },
        Identifier                  = { fg = c.fg },
        Function                    = { fg = c.blue },
        Statement                   = { fg = c.cyan },
        Conditional                 = { fg = c.cyan },
        Repeat                      = { fg = c.cyan },
        Label                       = { fg = c.cyan },
        Operator                    = { fg = c.yellow },
        Keyword                     = { fg = c.cyan },
        Exception                   = { fg = c.red },
        PreProc                     = { fg = c.magenta },
        Include                     = { fg = c.magenta },
        Define                      = { fg = c.magenta },
        Macro                       = { fg = c.magenta },
        Type                        = { fg = c.blue },
        StorageClass                = { fg = c.blue },
        Structure                   = { fg = c.blue },
        Typedef                     = { fg = c.blue },
        Special                     = { fg = c.red },
        SpecialChar                 = { fg = c.red },
        Delimiter                   = { fg = c.yellow },
        SpecialComment              = { fg = c.comment, italic = true },
        Underlined                  = { underline = true },
        Todo                        = { fg = c.cyan, bold = true },
        Error                       = { fg = c.diag_error },

        -- TreeSitter
        ["@comment"]                = { fg = c.comment, italic = true },
        ["@string"]                 = { fg = c.magenta },
        ["@string.escape"]          = { fg = c.red },
        ["@character"]              = { fg = c.magenta },
        ["@number"]                 = { fg = c.cyan },
        ["@float"]                  = { fg = c.cyan },
        ["@boolean"]                = { fg = c.cyan },
        ["@constant"]               = { fg = c.blue },
        ["@constant.builtin"]       = { fg = c.cyan },
        ["@variable"]               = { fg = c.fg },
        ["@variable.builtin"]       = { fg = c.cyan },
        ["@function"]               = { fg = c.blue },
        ["@function.builtin"]       = { fg = c.blue },
        ["@function.call"]          = { fg = c.blue },
        ["@method"]                 = { fg = c.blue },
        ["@method.call"]            = { fg = c.blue },
        ["@keyword"]                = { fg = c.cyan },
        ["@keyword.function"]       = { fg = c.cyan },
        ["@keyword.operator"]       = { fg = c.yellow },
        ["@keyword.return"]         = { fg = c.cyan },
        ["@operator"]               = { fg = c.yellow },
        ["@punctuation.bracket"]    = { fg = c.yellow },
        ["@punctuation.delimiter"]  = { fg = c.yellow },
        ["@type"]                   = { fg = c.blue },
        ["@type.builtin"]           = { fg = c.blue },
        ["@parameter"]              = { fg = c.fg },
        ["@field"]                  = { fg = c.fg },
        ["@property"]               = { fg = c.fg },
        ["@namespace"]              = { fg = c.blue },
        ["@tag"]                    = { fg = c.cyan },
        ["@tag.attribute"]          = { fg = c.blue },
        ["@tag.delimiter"]          = { fg = c.yellow },
        ["@text"]                   = { fg = c.fg },
        ["@text.title"]             = { fg = c.blue, bold = true },
        ["@text.emphasis"]          = { italic = true },
        ["@text.strong"]            = { bold = true },
        ["@text.uri"]               = { fg = c.magenta, underline = true },

        -- LSP semantic tokens
        ["@lsp.type.function"]      = { fg = c.blue },
        ["@lsp.type.method"]        = { fg = c.blue },
        ["@lsp.type.variable"]      = { fg = c.fg },
        ["@lsp.type.parameter"]     = { fg = c.fg },
        ["@lsp.type.property"]      = { fg = c.fg },
        ["@lsp.type.type"]          = { fg = c.blue },
        ["@lsp.type.class"]         = { fg = c.blue },
        ["@lsp.type.keyword"]       = { fg = c.cyan },
        ["@lsp.type.comment"]       = { fg = c.comment, italic = true },
        ["@lsp.type.string"]        = { fg = c.magenta },
        ["@lsp.type.number"]        = { fg = c.cyan },

        -- Diagnostics
        DiagnosticError             = { fg = c.diag_error },
        DiagnosticWarn              = { fg = c.diag_warn },
        DiagnosticInfo              = { fg = c.diag_info },
        DiagnosticHint              = { fg = c.diag_hint },
        DiagnosticUnderlineError    = { undercurl = true, sp = c.diag_error },
        DiagnosticUnderlineWarn     = { undercurl = true, sp = c.diag_warn },
        DiagnosticUnderlineInfo     = { undercurl = true, sp = c.diag_info },
        DiagnosticUnderlineHint     = { undercurl = true, sp = c.diag_hint },

        -- Git diff (fugitive / gitsigns)
        DiffAdd                     = { bg = "#D4F7D4", fg = c.fg },
        DiffChange                  = { bg = "#D4E4FF", fg = c.fg },
        DiffDelete                  = { bg = "#FFD4E0", fg = c.fg },
        DiffText                    = { bg = "#A9B5FA", fg = c.fg },
        GitSignsAdd                 = { fg = "#2E8B57" },
        GitSignsChange              = { fg = c.blue },
        GitSignsDelete              = { fg = c.red },

        -- NeoTree
        NeoTreeNormal               = { bg = c.menu_bg, fg = c.fg },
        NeoTreeNormalNC             = { bg = c.menu_bg, fg = c.fg },
        NeoTreeEndOfBuffer          = { bg = c.menu_bg, fg = c.menu_bg },
        NeoTreeWinSeparator         = { bg = c.menu_bg, fg = c.split },
        NeoTreeRootName             = { fg = c.blue, bold = true },
        NeoTreeIndentMarker         = { fg = c.nontext },
        NeoTreeExpander             = { fg = c.linenr },
        NeoTreeDirectoryName        = { fg = c.fg, bold = true },
        NeoTreeDirectoryIcon        = { fg = c.blue },
        NeoTreeFileName             = { fg = c.fg },
        NeoTreeFileNameOpened       = { fg = c.magenta, bold = true },
        NeoTreeFileIcon             = { fg = c.blue },
        NeoTreeSymbolicLinkTarget   = { fg = c.cyan },
        NeoTreeDotfile              = { fg = c.linenr },
        NeoTreeGitAdded             = { fg = "#2E8B57" },
        NeoTreeGitConflict          = { fg = c.red, bold = true },
        NeoTreeGitDeleted           = { fg = c.red },
        NeoTreeGitIgnored           = { fg = c.linenr },
        NeoTreeGitModified          = { fg = c.blue },
        NeoTreeGitUnstaged          = { fg = c.cyan },
        NeoTreeGitUntracked         = { fg = c.magenta },
        NeoTreeGitStaged            = { fg = "#2E8B57" },
        NeoTreeFloatBorder          = { bg = c.menu_bg, fg = c.split },
        NeoTreeFloatTitle           = { bg = c.menu_bg, fg = c.blue, bold = true },
        NeoTreeTitleBar             = { bg = c.blue, fg = c.bg },
        NeoTreeCursorLine           = { bg = c.cursorline },
        NeoTreeFilterTerm           = { fg = c.cyan, bold = true },
        NeoTreeTabActive            = { bg = c.bg, fg = c.fg, bold = true },
        NeoTreeTabInactive          = { bg = c.menu_bg, fg = c.linenr },
        NeoTreeTabSeparatorActive   = { bg = c.bg, fg = c.split },
        NeoTreeTabSeparatorInactive = { bg = c.menu_bg, fg = c.split },
    }
end

return M
