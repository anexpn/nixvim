{
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight = {
        enable = true;
      };
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "gnn";
          node_decremental = "<A-i>";
          node_incremental = "<A-o>";
          scope_incremental = "<A-n>";
        };
      };
      indent = {
        enable = true;
      };
    };
    folding = true;
  };
}
