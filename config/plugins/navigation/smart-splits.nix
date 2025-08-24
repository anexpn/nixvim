{
  plugins.smart-splits = {
    enable = true;
    settings = {
      ignored_buftypes = [
        "nofile"
        "quickfix"
        "prompt"
      ];
      ignored_filetypes = [ "NvimTree" ];
      default_amount = 3;
      at_edge = "wrap";
      float_win_behavior = "previous";
      move_cursor_same_row = false;
      cursor_follows_swapped_bufs = false;
      resize_mode = {
        quit_key = "<ESC>";
        resize_keys = [
          "h"
          "j"
          "k"
          "l"
        ];
        silent = true;
        hooks = {
          on_enter = null;
          on_leave = null;
        };
      };
      ignored_events = [
        "BufEnter"
        "WinEnter"
      ];
      multiplexer_integration = "tmux";
      disable_multiplexer_nav_when_zoomed = true;
      kitty_password = null;
    };
  };

  keymaps = [
    # Window navigation
    {
      mode = "n";
      key = "<C-h>";
      action.__raw = "require('smart-splits').move_cursor_left";
      options = {
        silent = true;
        desc = "Move to Left Split";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action.__raw = "require('smart-splits').move_cursor_down";
      options = {
        silent = true;
        desc = "Move to Split Below";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action.__raw = "require('smart-splits').move_cursor_up";
      options = {
        silent = true;
        desc = "Move to Split Above";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action.__raw = "require('smart-splits').move_cursor_right";
      options = {
        silent = true;
        desc = "Move to Right Split";
      };
    }

    # Window resizing
    {
      mode = "n";
      key = "<A-h>";
      action.__raw = "require('smart-splits').resize_left";
      options = {
        silent = true;
        desc = "Resize Split Left";
      };
    }
    {
      mode = "n";
      key = "<A-j>";
      action.__raw = "require('smart-splits').resize_down";
      options = {
        silent = true;
        desc = "Resize Split Down";
      };
    }
    {
      mode = "n";
      key = "<A-k>";
      action.__raw = "require('smart-splits').resize_up";
      options = {
        silent = true;
        desc = "Resize Split Up";
      };
    }
    {
      mode = "n";
      key = "<A-l>";
      action.__raw = "require('smart-splits').resize_right";
      options = {
        silent = true;
        desc = "Resize Split Right";
      };
    }

    # Window swapping
    {
      mode = "n";
      key = "<leader>wh";
      action.__raw = "require('smart-splits').swap_buf_left";
      options = {
        silent = true;
        desc = "Swap Split Left";
      };
    }
    {
      mode = "n";
      key = "<leader>wj";
      action.__raw = "require('smart-splits').swap_buf_down";
      options = {
        silent = true;
        desc = "Swap Split Down";
      };
    }
    {
      mode = "n";
      key = "<leader>wk";
      action.__raw = "require('smart-splits').swap_buf_up";
      options = {
        silent = true;
        desc = "Swap Split Up";
      };
    }
    {
      mode = "n";
      key = "<leader>wl";
      action.__raw = "require('smart-splits').swap_buf_right";
      options = {
        silent = true;
        desc = "Swap Split Right";
      };
    }
  ];
}
