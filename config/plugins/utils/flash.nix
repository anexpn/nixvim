{
  plugins.flash = {
    enable = true;
    settings = {
      jump = {
        autojump = true;
      };
      label = {
        uppercase = false;
        rainbow = {
          enabled = false;
          shade = 5;
        };
      };
    };
  };
  keymaps = [
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "s";
      action = "<cmd>lua require('flash').jump()<cr>";
      options = {
        desc = "Flash";
      };
    }

    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "S";
      action = "<cmd>lua require('flash').treesitter()<cr>";
      options = {
        desc = "Flash (treesitter)";
      };
    }

    {
      mode = "o";
      key = "r";
      action = "<cmd>lua require('flash').remote()<cr>";
      options = {
        desc = "Flash (remote)";
      };
    }

    {
      mode = [
        "x"
        "o"
      ];
      key = "R";
      action = "<cmd>lua require('flash').treesitter_search()<cr>";
      options = {
        desc = "Flash (treesitter search)";
      };
    }
  ];
}
