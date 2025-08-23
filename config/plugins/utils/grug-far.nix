{
  plugins.grug-far.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>sr";
      action = "<cmd>GrugFar<cr>";
      options = {
        desc = "Search and Replace";
        silent = true;
      };
    }
  ];
}