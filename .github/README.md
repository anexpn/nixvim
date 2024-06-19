# Nixvim config

My Neovim config using nixvim.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](../config/default.nix) file

### Current plugins

- **[colorscheme/](../config/plugins/colorscheme):** Theme configuration. Current one is [paradise](https://github.com/paradise-theme/paradise)
- **[completion/](../config/plugins/completion)**
  - **[nvim-cmp](../config/plugins/completion/cmp.nix):** Completion plugin for nvim + emoji support
  - **[copilot-cmp](../config/plugins/completion/copilot-cmp.nix):** Completion support for GitHub copilot
  - **[lspkind](../config/plugins/completion/lspkind.nix):** vscode-like pictograms for neovim lsp completion items
  - **[schemastore.nvim](../config/plugins/completion/schemastore.nix):** Schemastore integration
- **[git/](../config/plugins/git)**
  - **[gitlinker](../config/plugins/git/gitlinker.nix):** Generate shareable file permalinks
  - **[gitsigns](../config/plugins/git/gitsigns.nix):** Git integration for buffers
  - **[lazygit](../config/plugins/git/lazygit.nix):** The **best** git TUI, as a neovim plugin
  - **[worktree](../config/plugins/git/worktree.nix):** Make using git worktrees easier
- **[lsp/](../config/plugins/lsp)**
  - **[conform](../config/plugins/lsp/conform.nix):** Formatter plugin
  - **[fidget](../config/plugins/lsp/fidget.nix):** LSP progress notifications
  - **[hlchunk](../config/plugins/lsp/hlchunk.nix):** Highlight useful things like current chunk or indent lines
  - **[lsp](../config/plugins/lsp/lsp.nix):** LSP configs
  - **[lspsaga](../config/plugins/lsp/lspsaga.nix):** Cool LSP features
  - **[none-ls](../config/plugins/lsp/none-ls.nix):** null-ls replacement. Use nvim as LSP
  - **[trouble](../config/plugins/lsp/trouble.nix):** Pretty interface for working with LSP
- **[snippet/](../config/plugins/snippet)**
  - **[luasnip](../config/plugins/snippet/luasnip.nix):** Snippet engine in lua
- **[statusline/](../config/plugins/statusline)**
  - **[lualine](../config/plugins/statusline/lualine.nix):** Status line for neovim
  - **[staline](../config/plugins/statusline/staline.nix):** Some soviet guy that died a long time ago
- **[treesitter/](../config/plugins/treesitter)**
  - **[treesitter-context](../config/plugins/treesitter/treesitter-context.nix):** Show code context
  - **[treesitter-textobject](../config/plugins/treesitter/treesitter-textobject.nix):** Allow cool text manupulation thanks to TS
  - **[treesitter](../config/plugins/treesitter/treesitter.nix):** Parser generator tool to build a syntax tree of the current buffer
- **[ui/](../config/plugins/ui)**
  - **[alpha](../config/plugins/ui/alpha.nix):** Dashboard
  - **[btw](../config/plugins/ui/btw.nix):** Writes a small message as startup screen
  - **[bufferline](../config/plugins/ui/bufferline.nix):** VSCode like line for buffers
  - **[noice](../config/plugins/ui/noice.nix):** Better nvim UI
  - **[nvim-notify](../config/plugins/ui/nvim-notify.nix):** Notification manager
  - **[precognition](../config/plugins/ui/precognition.nix):** Show inline navigation hint
  - **[telescope](../config/plugins/ui/telescope.nix):** Best plugin ever ?
- **[utils/](../config/plugins/utils)**
  - **[comment](../config/plugins/utils/comment.nix):** Quickly toggle comments
  - **[CopilotChat](../config/plugins/utils/copilot.nix):** Chat with copilot in nvim
  - **[dap](../config/plugins/utils/dap.nix):** Debug in nvim
  - **[flash](../config/plugins/utils/flash.nix):** Navigate in file with a few keystrokes
  - **[grapple](../config/plugins/utils/grapple.nix):** Quickly switch between buffers (Harpoon replacement)
  - **[hardtime](../config/plugins/utils/hardtime.nix):** Learn vim motions, the hard way
  - **[harpoon](../config/plugins/utils/harpoon.nix):** Quickly switch between buffers
  - **[illuminate](../config/plugins/utils/illuminate.nix):** Highlight word under the cursor
  - **[nvim-autopairs](../config/plugins/utils/nvim-autopairs.nix):** Autopairs in nvim
  - **[obsidian](../config/plugins/utils/obsidian.nix):** Obsidian integration for nvim
  - **[oil](../config/plugins/utils/oil.nix):** Navigate in your working folder with a buffer
  - **[ufo](../config/plugins/utils/ufo.nix):** Folding plugin
  - **[undotree](../config/plugins/utils/undotree.nix):** Undo history visualizer
  - **[whichkey](../config/plugins/utils/whichkey.nix):** Popup to display keybindings
