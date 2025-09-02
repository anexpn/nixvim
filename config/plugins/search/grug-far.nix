{
  plugins.grug-far = {
    enable = true;
    lazyLoad = {
      settings = {
        cmd = "GrugFar";
        keys = [
          "<leader>sr"
        ];
      };
    };
  };

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

