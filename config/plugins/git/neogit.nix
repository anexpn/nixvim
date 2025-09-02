{
  plugins.neogit = {
    enable = true;
    lazyLoad = {
      settings = {
        cmd = "Neogit";
      };
    };
    settings = {
      integrations = {
        diffview = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gn";
      action = "<cmd>Neogit<CR>";
      options = {
        desc = "Neogit";
      };
    }
  ];
}

