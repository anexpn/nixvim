# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- **Build and run**: `nix run .` or `just run` (using justfile)
- **Build only**: `nix build` or `just build`
- **Formatting**: `nix fmt` or `just format` (uses alejandra formatter)
- **Development shell**: `nix develop` or `just develop` (includes pre-commit hooks)
- **Check/Test**: `nix flake check` or `just check`
- **Update dependencies**: `just update` (updates flake inputs)
- **Clean**: `just clean` (garbage collect and clean build artifacts)

**IMPORTANT**: Always run `git add .` before executing `nix flake check` or `nix build` commands. Nix flakes only see files that are tracked by git, so unstaged changes will cause build failures.

## Architecture Overview

This is a NixVim configuration written in Nix that creates a complete Neovim setup. The configuration is structured as a Nix flake with modular organization:

### Core Structure
- `flake.nix`: Main flake definition with nixvim integration and pre-commit hooks
- `config/default.nix`: Main configuration entry point that imports all modules
- `justfile`: Simple task runner with `run` command

### Configuration Organization
- `config/options.nix`: Core Neovim options (indentation, search, UI settings)
- `config/keymaps.nix`: Comprehensive keymap definitions with leader key bindings
- `config/colorschemes.nix`: Theme configuration with multiple options
- `config/autocmd.nix`: Autocommands

### Plugin Structure
Plugins are organized by category in `config/plugins/`:
- `completion/`: blink-cmp (modern completion engine)
- `git/`: Git integration (gitsigns, lazygit, worktree)
- `lsp/`: Language server setup (conform, fidget, hlchunk, lsp, lspsaga, none-ls, trouble)
- `snippets/`: LuaSnip configuration
- `statusline/`: Status line plugins (lualine)
- `treesitter/`: Treesitter, treesitter-textobjects, treesitter-context
- `ui/`: UI enhancements (telescope, web-devicons, alpha, indent-blankline, noice, nvim-notify, bufferline)
- `utils/`: Utility plugins (comment, flash, hardtime, harpoon, illuminate, nvim-autopairs, oil, toggleterm, ufo, undotree, whichkey)
- `langs/`: Language-specific plugins (Haskell telescope_hoogle)

### Theme System
- Uses Catppuccin colorscheme with integrated plugin support
- Flavour: "frappe" (also supports "latte", "mocha", "macchiato")
- Comprehensive integration with telescope, treesitter, LSP, and other plugins

### Key Features
- Leader key: Space
- Extensive keymap organization with which-key integration
- Pre-commit hooks with statix and alejandra
- Multi-platform support (Linux and macOS, both x86_64 and aarch64)
- Modular plugin system allows easy enabling/disabling of features
- Home-manager integration support for declarative system configuration

## Development Notes

- Configuration uses NixVim's module system for type-safe Neovim configuration
- All plugins are configured in separate .nix files for maintainability
- Uses alejandra for Nix code formatting
- Recent migration from nvim-cmp to blink-cmp for improved completion performance
- Supports both standalone usage and home-manager integration via flake modules

## Plugin Management Reminders

**IMPORTANT**: When adding new plugins, remember to:
1. Update the `recent_plugins` table in `config/options.nix` (around line 96) with:
   - Plugin name and date added
   - Description of functionality
   - Key mappings and usage instructions
2. Update `WISHLIST.md` to mark the plugin as completed
3. The `:RecentPlugins` command shows users the latest plugin additions and how to use them