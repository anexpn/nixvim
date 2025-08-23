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
        desc = "Flash Jump";
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
        desc = "Flash Continue";
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
        desc = "Flash Jump to Node";
      };
    }

    {
      mode = "o";
      key = "r";
      action.__raw = "function() require('flash').remote() end";
      options = {
        desc = "Flash Remote Jump";
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
        desc = "Flash Search Nodes";
      };
    }
  ];
}
