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
        desc = "Show Git Blame";
      };
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = ":Gitsigns preview_hunk<CR>";
      options = {
        silent = true;
        desc = "Preview Hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = ":Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "Reset Buffer Changes";
      };
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = ":Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "Stage Buffer Changes";
      };
    }
    {
      mode = "n";
      key = "]h";
      action = ":Gitsigns next_hunk<CR>";
      options = {
        silent = true;
        desc = "Next Hunk";
      };
    }
    {
      mode = "n";
      key = "[h";
      action = ":Gitsigns prev_hunk<CR>";
      options = {
        silent = true;
        desc = "Previous Hunk";
      };
    }
  ];
}
