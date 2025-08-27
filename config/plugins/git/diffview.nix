{
  plugins.diffview = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gv";
      action = "<cmd>DiffviewOpen<CR>";
      options = {
        desc = "Open Diffview";
      };
    }
    {
      mode = "n";
      key = "<leader>gh";
      action = "<cmd>DiffviewFileHistory<CR>";
      options = {
        desc = "File History";
      };
    }
    {
      mode = "n";
      key = "<leader>gq";
      action = "<cmd>DiffviewClose<CR>";
      options = {
        desc = "Close Diffview";
      };
    }
  ];
}
