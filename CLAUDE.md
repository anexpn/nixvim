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

**IMPORTANT**: This repository uses `jj` (Jujutsu) for version control. Files are automatically tracked, so no staging is required before running `nix build` or `nix flake check`. Nix flakes only see files tracked by version control, so ensure files exist before building.

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
- `editing/`: Text editing enhancements (comment, nvim-autopairs, nvim-surround)
- `files/`: File management (oil file explorer)
- `git/`: Git integration (gitsigns, lazygit, worktree)
- `lsp/`: Language server setup (conform, fidget, hlchunk, lsp, lspsaga, none-ls, trouble)
- `navigation/`: Movement and navigation (flash, harpoon, smart-splits)
- `search/`: Search and replace (grug-far)
- `snippets/`: LuaSnip configuration
- `statusline/`: Status line plugins (lualine)
- `terminal/`: Terminal integration (toggleterm)
- `testing/`: Test framework (neotest)
- `treesitter/`: Treesitter, treesitter-textobjects, treesitter-context
- `ui/`: UI enhancements (telescope, web-devicons, alpha, indent-blankline, noice, nvim-notify, bufferline, snacks, ufo, zen-mode)
- `workflow/`: Workflow and productivity (hardtime, undotree, whichkey)
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
- Recent additions include smart-splits for seamless split navigation, zen-mode for distraction-free coding, nvim-surround for delimiter manipulation, neotest for test framework integration, grug-far for advanced search/replace, and snacks.nvim for comprehensive UI enhancements

## Plugin Management Reminders

**IMPORTANT**: When adding new plugins, remember to:
1. Update the `recent_plugins` table in `config/options.nix` (around line 96) with:
   - Plugin name and date added
   - Description of functionality
   - Key mappings and usage instructions
2. Update `WISHLIST.md` to mark the plugin as completed
3. **KEYMAP CONSISTENCY**: Always check `config/plugins/workflow/whichkey.nix` and follow existing keymap groups:
   - `<leader>f` = File operations
   - `<leader>s` = Search operations
   - `<leader>g` = Git operations
   - `<leader>c` = Code operations
   - `<leader>u` = UI operations
   - `<leader>w` = Window operations
   - `<leader>b` = Buffer operations
   - `<leader>t` = Test operations
   - Add new keymaps to the appropriate whichkey spec with proper icon and color
4. The `:RecentPlugins` command shows users the latest plugin additions and how to use them
- When adding new plugin, start simple, evolve when neccessary. But always include some essential defaults.
- remember to add new nix file to default.nix
- Always start new plugin config simple, add incrementally.
- When adding plugins, start with default config with no settings.

**For plugins not in NixVim's official set**: Use the `add-nixvim-plugin` skill for a guided workflow using `extraPlugins` and lazy loading.