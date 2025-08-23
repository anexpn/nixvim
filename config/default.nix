{
  imports = [
    ./options.nix
    ./colorschemes.nix
    ./autocmd.nix

    ./plugins/completion/cmp.nix
    ./plugins/completion/lspkind.nix
    ./plugins/completion/copilot-cmp.nix

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

    ./plugins/utils/flash.nix
    ./plugins/utils/oil.nix
    ./plugins/utils/comment.nix
    ./plugins/utils/harpoon.nix
    ./plugins/utils/hardtime.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/nvim-autopairs.nix
    ./plugins/utils/ufo.nix
    ./plugins/utils/undotree.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/toggleterm.nix

    ./plugins/langs/haskell/telescope_hoogle.nix

    # Overrided by the above
    ./keymaps.nix
  ];
}
