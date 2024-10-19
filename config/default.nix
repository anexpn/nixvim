{
  config,
  lib,
  ...
}: {
  imports = [
    ./options.nix
    ./highlight.nix
    ./colorschemes.nix
    ./autocmd.nix

    ./plugins/completion/cmp.nix

    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix
    ./plugins/git/worktree.nix

    # ./plugins/lsp/conform.nix
    # ./plugins/lsp/fidget.nix
    # ./plugins/lsp/hlchunk.nix
    # ./plugins/lsp/lsp.nix
    # ./plugins/lsp/lspsaga.nix
    # ./plugins/lsp/none-ls.nix
    # ./plugins/lsp/trouble.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/statusline/lualine.nix

    ./plugins/treesitter/treesitter-textobjects.nix
    ./plugins/treesitter/treesitter.nix

    ./plugins/ui/btw.nix
    ./plugins/ui/bufferline.nix
    # ./plugins/ui/indent-blankline.nix
    ./plugins/ui/noice.nix
    ./plugins/ui/nvim-notify.nix
    ./plugins/ui/telescope.nix

    ./plugins/utils/comment.nix
    ./plugins/utils/flash.nix
    ./plugins/utils/grapple.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/nvim-autopairs.nix
    ./plugins/utils/oil.nix
    ./plugins/utils/ufo.nix
    ./plugins/utils/undotree.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/toggleterm.nix

    ./plugins/langs/haskell/telescope_hoogle.nix

    # Overrided by the above
    ./keymaps.nix
  ];
  options = {
    theme = lib.mkOption {
      default = "paradise";
      type = lib.types.enum ["paradise" "decay" "mountain" "tokyonight" "everforest" "everblush" "jellybeans" "aquarium" "gruvbox"];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum ["copilot" "none"];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "jellybeans";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
