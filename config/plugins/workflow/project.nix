{
  plugins.project-nvim = {
    enable = true;
    enableTelescope = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>Telescope projects<cr>";
      options = {
        desc = "Find Projects";
        silent = true;
      };
    }
  ];
}