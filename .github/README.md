# Nixvim config

My Neovim config using nixvim.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](../config/default.nix) file

### Current plugins

- **[colorscheme/](../config/plug/colorscheme):** Theme configuration. Current one is [paradise](https://github.com/paradise-theme/paradise)
- **[completion/](../config/plug/completion)**
  - **[nvim-cmp](../config/plug/completion/cmp.nix):** Completion plugin for nvim + emoji support
  - **[copilot-cmp](../config/plug/completion/copilot-cmp.nix):** Completion support for GitHub copilot
  - **[lspkind](../config/plug/completion/lspkind.nix):** vscode-like pictograms for neovim lsp completion items
  - **[schemastore.nvim](../config/plug/completion/schemastore.nix):** Schemastore integration
- **[git/](../config/plug/git)**
  - **[gitlinker](../config/plug/git/gitlinker.nix):** Generate shareable file permalinks
  - **[gitsigns](../config/plug/git/gitsigns.nix):** Git integration for buffers
  - **[lazygit](../config/plug/git/lazygit.nix):** The **best** git TUI, as a neovim plugin
  - **[worktree](../config/plug/git/worktree.nix):** Make using git worktrees easier
- **[lsp/](../config/plug/lsp)**
  - **[conform](../config/plug/lsp/conform.nix):** Formatter plugin
  - **[fidget](../config/plug/lsp/fidget.nix):** LSP progress notifications
  - **[hlchunk](../config/plug/lsp/hlchunk.nix):** Highlight useful things like current chunk or indent lines
  - **[lsp](../config/plug/lsp/lsp.nix):** LSP configs
  - **[lspsaga](../config/plug/lsp/lspsaga.nix):** Cool LSP features
  - **[none-ls](../config/plug/lsp/none-ls.nix):** null-ls replacement. Use nvim as LSP
  - **[trouble](../config/plug/lsp/trouble.nix):** Pretty interface for working with LSP
- **[snippet/](../config/plug/snippet)**
  - **[luasnip](../config/plug/snippet/luasnip.nix):** Snippet engine in lua
- **[statusline/](../config/plug/statusline)**
  - **[lualine](../config/plug/statusline/lualine.nix):** Status line for neovim
  - **[staline](../config/plug/statusline/staline.nix):** Some soviet guy that died a long time ago
- **[treesitter/](../config/plug/treesitter)**
  - **[treesitter-context](../config/plug/treesitter/treesitter-context.nix):** Show code context
  - **[treesitter-textobject](../config/plug/treesitter/treesitter-textobject.nix):** Allow cool text manupulation thanks to TS
  - **[treesitter](../config/plug/treesitter/treesitter.nix):** Parser generator tool to build a syntax tree of the current buffer
- **[ui/](../config/plug/ui)**
  - **[alpha](../config/plug/ui/alpha.nix):** Dashboard
  - **[btw](../config/plug/ui/btw.nix):** Writes a small message as startup screen
  - **[bufferline](../config/plug/ui/bufferline.nix):** VSCode like line for buffers
  - **[noice](../config/plug/ui/noice.nix):** Better nvim UI
  - **[nvim-notify](../config/plug/ui/nvim-notify.nix):** Notification manager
  - **[precognition](../config/plug/ui/precognition.nix):** Show inline navigation hint
  - **[telescope](../config/plug/ui/telescope.nix):** Best plugin ever ?
- **[utils/](../config/plug/utils)**
  - **[comment](../config/plug/utils/comment.nix):** Quickly toggle comments
  - **[CopilotChat](../config/plug/utils/copilot.nix):** Chat with copilot in nvim
  - **[dap](../config/plug/utils/dap.nix):** Debug in nvim
  - **[flash](../config/plug/utils/flash.nix):** Navigate in file with a few keystrokes
  - **[grapple](../config/plug/utils/grapple.nix):** Quickly switch between buffers (Harpoon replacement)
  - **[hardtime](../config/plug/utils/hardtime.nix):** Learn vim motions, the hard way
  - **[harpoon](../config/plug/utils/harpoon.nix):** Quickly switch between buffers
  - **[illuminate](../config/plug/utils/illuminate.nix):** Highlight word under the cursor
  - **[nvim-autopairs](../config/plug/utils/nvim-autopairs.nix):** Autopairs in nvim
  - **[obsidian](../config/plug/utils/obsidian.nix):** Obsidian integration for nvim
  - **[oil](../config/plug/utils/oil.nix):** Navigate in your working folder with a buffer
  - **[ufo](../config/plug/utils/ufo.nix):** Folding plugin
  - **[undotree](../config/plug/utils/undotree.nix):** Undo history visualizer
  - **[whichkey](../config/plug/utils/whichkey.nix):** Popup to display keybindings
