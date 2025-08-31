# 🚀 Neovim Configuration

A modern, feature-rich Neovim configuration built with Lua, featuring LSP support, fuzzy finding, autocompletion, and more.

## 📖 Description

This is a comprehensive Neovim configuration that transforms Neovim into a powerful, IDE-like editor. Built with modern Lua and using the Lazy package manager, it provides an excellent development experience with features like:

- **Language Server Protocol (LSP)** support for intelligent code completion and navigation
- **Fuzzy finding** with Telescope for files, symbols, and more
- **Advanced autocompletion** with blink.cmp and LuaSnip
- **Tree-sitter** for enhanced syntax highlighting and code navigation
- **Auto-formatting** on save with conform.nvim
- **Modern UI** with Nerd Font icons and clean aesthetics

## ⌨️ Major Keymaps

### Leader Key
- **Leader**: `<Space>` (set as global leader)

### Search & Navigation
- `<leader>sf` - Search files
- `<leader>sg` - Live grep search
- `<leader>sw` - Search current word
- `<leader>sh` - Search help tags
- `<leader>sk` - Search keymaps
- `<leader>ss` - Select Telescope picker
- `<leader>sd` - Search diagnostics
- `<leader>sr` - Resume last search
- `<leader>s.` - Search recent files
- `<leader>sn` - Search Neovim config files
- `<leader>/` - Fuzzy search in current buffer
- `<leader>s/` - Live grep in open files
- `<leader><leader>` - Find existing buffers

### Window Navigation
- `<C-h>` - Move focus to left window
- `<C-l>` - Move focus to right window
- `<C-j>` - Move focus to lower window
- `<C-k>` - Move focus to upper window

### LSP (Language Server Protocol)
- `grn` - Rename variable under cursor
- `gra` - Execute code action
- `grr` - Find references
- `gri` - Go to implementation
- `grd` - Go to definition
- `grD` - Go to declaration
- `gO` - Open document symbols
- `gW` - Open workspace symbols
- `grt` - Go to type definition
- `<leader>th` - Toggle inlay hints

### Formatting
- `<leader>f` - Format current buffer

### General
- `<Esc>` - Clear search highlights
- `<leader>tt` - Toggle floating terminal

## 🚀 Functionalities

### 🔧 Core Features
- **Modern Neovim**: Built for Neovim 0.8+ with Lua
- **Lazy Package Manager**: Fast, efficient plugin management
- **Nerd Font Support**: Beautiful icons throughout the interface
- **Mouse Integration**: Full mouse support enabled
- **Clipboard Integration**: System clipboard support

### 📝 Editor Enhancements
- **Line Numbers**: Relative and absolute line numbers
- **Indentation**: 4-space indentation with smart indenting
- **Split Behavior**: Intuitive split navigation (right/below)
- **Visual Indicators**: 
  - Tab characters: `» `
  - Trailing spaces: `·`
  - Non-breaking spaces: `␣`
- **Cursor Line**: Highlight current line
- **Scroll Offset**: 10-line scroll margin

### 🔍 Search & Discovery
- **Telescope**: Powerful fuzzy finder for:
  - Files and directories
  - Live grep across project
  - LSP symbols and references
  - Help documentation
  - Keymaps
  - Recent files
  - Buffers
- **FZF Integration**: Native fuzzy finder backend
- **UI Select**: Dropdown selection interface

### 💻 Development Tools
- **LSP Support**: 
  - Automatic language server installation via Mason
  - Code completion and diagnostics
  - Go to definition/implementation
  - Symbol search and navigation
  - Code actions and refactoring
- **Tree-sitter**: 
  - Enhanced syntax highlighting
  - Smart indentation
  - Code folding
  - Supported languages: bash, c, diff, html, lua, markdown, vim
- **Autocompletion**: 
  - blink.cmp for intelligent completion
  - LuaSnip for code snippets
  - LSP-aware suggestions
  - Path and snippet completion

### 🎨 Code Quality
- **Auto-formatting**: 
  - Format on save with conform.nvim
  - Language-specific formatters
  - Lua: stylua
  - JavaScript: prettier/prettierd
- **Diagnostics**: 
  - Real-time error checking
  - Beautiful diagnostic signs
  - Inline and floating diagnostic display

### ⚡ Performance
- **Lazy Loading**: Plugins load only when needed
- **Scheduled Operations**: Clipboard setup scheduled to avoid startup slowdown
- **Efficient Updates**: Optimized update timing (250ms)

## 🛠️ Requirements

- **Neovim**: Version 0.8.0 or higher
- **Nerd Font**: For proper icon display
- **Git**: For package management
- **Make**: For building some plugins (optional)

## 📦 Installation

1. **Clone this repository**:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

2. **Install a Nerd Font** (recommended):
   - Download from [Nerd Fonts](https://www.nerdfonts.com/)
   - Set it as your terminal font

3. **Start Neovim**:
   ```bash
   nvim
   ```

4. **Wait for setup**: Lazy will automatically install all required plugins on first run

## 🔧 Customization

The configuration is modular and easy to customize:

- **Plugins**: Edit files in `lua/plugins/`
- **Keymaps**: Modify `lua/keymaps.lua`
- **Autocommands**: Edit `lua/autocmd.lua`
- **Core settings**: Adjust `init.lua`

## 📚 Plugin Architecture

- **Package Manager**: Lazy.nvim
- **LSP**: nvim-lspconfig + Mason
- **Completion**: blink.cmp + LuaSnip
- **Fuzzy Finder**: Telescope + fzf-native
- **Syntax**: Tree-sitter
- **Formatting**: conform.nvim
- **Keymaps**: which-key.nvim

## 🎯 Getting Started

1. Open Neovim and wait for initial setup
2. Use `<leader>sf` to find files
3. Use `<leader>sg` to search across your project
4. Explore LSP features with `gr` prefixed commands
5. Check `:help` for detailed documentation

## 🤝 Contributing

Feel free to submit issues, feature requests, or pull requests to improve this configuration.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy coding with Neovim! 🎉**
