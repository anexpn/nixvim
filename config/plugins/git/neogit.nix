{
  plugins.neogit = {
    enable = true;
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