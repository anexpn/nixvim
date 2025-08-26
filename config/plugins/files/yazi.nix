{
  plugins.yazi = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>-";
      action = "<cmd>Yazi<cr>";
      options = {
        desc = "Open yazi file manager";
        silent = true;
      };
    }
  ];
}

