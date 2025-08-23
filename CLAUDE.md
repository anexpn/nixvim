# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- **Build and run**: `nix run .` or `just run` (using justfile)
- **Formatting**: `nix fmt` (uses alejandra formatter)
- **Development shell**: `nix develop` (includes pre-commit hooks)
- **Check/Test**: `nix flake check` (note: currently has nixvimLib issue)

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
- `completion/`: CMP, copilot-cmp, lspkind, schemastore
- `git/`: Git integration (gitsigns, lazygit, worktree)
- `lsp/`: Language server setup (conform, fidget, hlchunk, lsp, lspsaga, none-ls, trouble)
- `snippets/`: LuaSnip configuration
- `statusline/`: Status line plugins (lualine, staline)
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

## Development Notes

- The flake currently has a nixvimLib check issue that prevents `nix flake check` from working
- Configuration uses NixVim's module system for type-safe Neovim configuration
- All plugins are configured in separate .nix files for maintainability
- Uses alejandra for Nix code formatting