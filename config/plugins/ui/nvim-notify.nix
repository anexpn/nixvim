{
  plugins.notify = {
    enable = true;
    settings = {
      background_colour = "#000000";
      fps = 60;
      render = "default";
      timeout = 1000;
      top_down = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>un";
      action = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';
      options = {
        desc = "Dismiss notifications";
      };
    }
  ];
}
