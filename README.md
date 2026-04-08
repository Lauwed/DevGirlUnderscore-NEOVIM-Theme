# devgirlunderscorecolorscheme.nvim

A light Neovim colorscheme with a pink & blue palette, inspired by the **Suburb Light** terminal theme.

<img width="1548" height="798" alt="image" src="https://github.com/user-attachments/assets/59fe1498-23c9-4f92-b1a1-98409b97ded7" />

## Features

- Light background with a soft pink/blue/purple palette
- Full **TreeSitter** support
- **LSP semantic token** highlights
- **Diagnostic** highlights (errors, warnings, info, hints)
- **GitSigns** integration
- **Neo-tree** integration
- Optional **lualine** theme (with Nerd Font powerline glyphs)

## Requirements

- Neovim >= 0.8
- A [Nerd Font](https://www.nerdfonts.com/) (required for the lualine theme separators)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "Lauwed/DevGirlUnderscore-NEOVIM-Theme",
    priority = 1000,
    config = function()
        require("devgirlunderscorecolorscheme").setup()
        vim.cmd("colorscheme devgirlunderscorecolorscheme")
    end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "Lauwed/DevGirlUnderscore-NEOVIM-Theme",
    config = function()
        require("devgirlunderscorecolorscheme").setup()
        vim.cmd("colorscheme devgirlunderscorecolorscheme")
    end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Lauwed/DevGirlUnderscore-NEOVIM-Theme'
```

Then in your config:

```lua
require("devgirlunderscorecolorscheme").setup()
vim.cmd("colorscheme devgirlunderscorecolorscheme")
```

## Lualine Integration

To use the included lualine theme, call `setup_lualine()` instead of (or after) configuring lualine yourself:

```lua
require("devgirlunderscorecolorscheme").setup_lualine()
```

This sets up lualine with the colorscheme's palette and powerline-style separators. Requires [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) to be installed.

## Color Palette

| Role            | Hex       |
|-----------------|-----------|
| Background      | `#EBEDFF` |
| Foreground      | `#1E202F` |
| Blue            | `#5458D4` |
| Magenta         | `#3C53DB` |
| Pink / Cyan     | `#D10057` |
| Red             | `#CB1A64` |
| Comment         | `#4F5472` |
| Selection       | `#FFB3D2` |
| Cursor          | `#FB6FA9` |

## License

MIT
