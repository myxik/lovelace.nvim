# Lovelace.nvim

A dark and elegant colorscheme for Neovim, inspired by iTerm2 lovelace theme

## Features

- 🎨 Carefully crafted color palette for optimal readability
- 🛠️ Built-in support for popular plugins
- 🔌 Native LSP support
- 📝 Semantic highlighting
- 🖥️ True color (24-bit) support
- ⚡ Written in Lua for optimal performance

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'myxik/lovelace.nvim'
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    'myxik/lovelace.nvim',
    lazy = false,
    priority = 1000,
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'myxik/lovelace.nvim'
```

## 🚀 Usage

Add this to your Neovim configuration:

```lua
-- Lua
vim.cmd('colorscheme lovelace')
```

Or in VimScript:

```vim
" VimScript
colorscheme lovelace
```

## 🎨 Supported Plugins

- Native LSP
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Git signs and diffs
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

## 🛠️ Configuration

The colorscheme works out of the box with no configuration needed. However, make sure you have `termguicolors` enabled in your Neovim configuration:

```lua
vim.opt.termguicolors = true
```

## 🤝 Contributing

Contributions are welcome! Feel free to submit a Pull Request.

## 📝 License

MIT License - feel free to use this colorscheme in any way you'd like.

## 🙏 Credits

Created with by [myxik](https://github.com/myxik) and README created by Claude Sonnet 3.5