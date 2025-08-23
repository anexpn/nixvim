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
      action.__raw = "function() require('flash').jump() end";
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
      key = "<C-s>";
      action.__raw = "function() require('flash').jump({continue = true}) end";
      options = {
        desc = "Flash (continue)";
      };
    }

    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "S";
      action.__raw = "function() require('flash').treesitter() end";
      options = {
        desc = "Flash (treesitter)";
      };
    }

    {
      mode = "o";
      key = "r";
      action.__raw = "function() require('flash').remote() end";
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
      action.__raw = "function() require('flash').treesitter_search() end";
      options = {
        desc = "Flash (treesitter search)";
      };
    }
  ];
}
