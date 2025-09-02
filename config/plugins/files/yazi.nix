{
  plugins.yazi = {
    enable = true;
    lazyLoad = {
      settings = {
        cmd = "Yazi";
        keys = [
          "<leader>-"
        ];
      };
    };
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
