{
  imports = [
    ./options.nix
    ./colorschemes.nix
    ./autocmd.nix

    ./plugins/completion/blink-cmp.nix

    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix
    ./plugins/git/worktree.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/hlchunk.nix
    ./plugins/lsp/lspsaga.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/trouble.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/statusline/lualine.nix

    ./plugins/treesitter/treesitter.nix
    ./plugins/treesitter/treesitter-textobjects.nix
    ./plugins/treesitter/treesitter-context.nix

    ./plugins/ui/telescope.nix
    ./plugins/ui/web-devicons.nix
    ./plugins/ui/alpha.nix
    ./plugins/ui/indent-blankline.nix
    ./plugins/ui/noice.nix
    ./plugins/ui/nvim-notify.nix
    ./plugins/ui/bufferline.nix
    ./plugins/ui/ufo.nix
    ./plugins/ui/illuminate.nix

    ./plugins/navigation/flash.nix
    ./plugins/navigation/harpoon.nix

    ./plugins/editing/comment.nix
    ./plugins/editing/nvim-autopairs.nix
    ./plugins/editing/nvim-surround.nix

    ./plugins/search/grug-far.nix

    ./plugins/files/oil.nix

    ./plugins/terminal/toggleterm.nix

    ./plugins/workflow/hardtime.nix
    ./plugins/workflow/undotree.nix
    ./plugins/workflow/whichkey.nix

    ./plugins/langs/haskell/telescope_hoogle.nix

    # Overrided by the above
    ./keymaps.nix
  ];
}
