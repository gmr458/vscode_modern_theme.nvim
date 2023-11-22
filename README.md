# VSCode Modern theme for Neovim, Dark & Light versions

![screenshot-01](./screenshots/01.png)

## Float terminal
![screenshot-02](./screenshots/02.png)

## Telescope find files
![screenshot-03](./screenshots/03.png)

## Telescope live grep
![screenshot-04](./screenshots/04.png)

## Telescope LSP references
![screenshot-05](./screenshots/05.png)

## Telescope LSP implementations
![screenshot-06](./screenshots/06.png)

# Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "gmr458/vscode_modern_theme.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("dark_modern").setup({
            cursorline = true,
            transparent_background = false,
            nvim_tree_darker = true,
        })
        vim.cmd.colorscheme("dark_modern")
    end,
}
```
