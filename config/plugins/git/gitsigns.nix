{
  plugins.gitsigns = {
    enable = true;
    settings = {
      trouble = true;
      current_line_blame = false;
      signs = {
        add = {
          text = "│";
        };
        change = {
          text = "│";
        };
        delete = {
          text = "_";
        };
        topdelete = {
          text = "‾";
        };
        changedelete = {
          text = "~";
        };
        untracked = {
          text = "│";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gb";
      action = ":Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "Blame line";
      };
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = ":Gitsigns diffthis<CR>";
      options = {
        silent = true;
        desc = "Diff this";
      };
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = ":Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "Reset buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = ":Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "Stage buffer";
      };
    }
  ];
}
