# Jetbrains 2023 dark theme for Neovim

A port of the default dark theme from Jetbrains' IDE for Neovim with Treesitter support.

![Screenshot](https://user-images.githubusercontent.com/17355488/235284483-77920361-b1b7-4c12-8b1a-d81952aeb947.png)

Includes support for:
- Tree-sitter
- LSP semantic highlighting
- [HiPhish/nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "ffff00-korj/jet-dark-theme-nvim",
  config = function() vim.cmd("colorscheme jet-dark") end
}
```

