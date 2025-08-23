{
  plugins.lspsaga = {
    enable = true;
    settings = {
      beacon = {
        enable = true;
      };
      ui = {
        border = "rounded"; # One of none, single, double, rounded, solid, shadow
        code_action = "💡"; # Can be any symbol you want 💡
      };
      hover = {
        open_cmd = "!floorp"; # Choose your browser
        open_link = "gx";
      };
      diagnostic = {
        border_follow = true;
        diagnostic_only_current = false;
        show_code_action = true;
      };
      symbol_in_winbar = {
        enable = true; # Breadcrumbs
      };
      code_action = {
        extend_git_signs = false;
        show_server_name = true;
        only_in_cursor = true;
        num_shortcut = true;
        keys = {
          exec = "<CR>";
          quit = [
            "<Esc>"
            "q"
          ];
        };
      };
      lightbulb = {
        enable = false;
        sign = false;
        virtual_text = true;
      };
      implement = {
        enable = false;
      };
      rename = {
        auto_save = false;
        keys = {
          exec = "<CR>";
          quit = [
            "<C-k>"
            "<Esc>"
          ];
          select = "x";
        };
      };
      outline = {
        auto_close = true;
        auto_preview = true;
        close_after_jump = true;
        layout = "normal"; # normal or float
        win_position = "right"; # left or right
        keys = {
          jump = "e";
          quit = "q";
          toggle_or_jump = "o";
        };
      };
      scroll_preview = {
        scroll_down = "<C-f>";
        scroll_up = "<C-b>";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "gd";
      action = "<cmd>Lspsaga goto_definition<CR>";
      options = {
        desc = "[LSP] Goto definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "[LSP] Goto references";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "gI";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        desc = "[LSP] Goto implementation";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "gT";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      options = {
        desc = "[LSP] Peek type definition";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "[LSP] Hover";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cw";
      action = "<cmd>Lspsaga outline<CR>";
      options = {
        desc = "[LSP] Outline";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "[LSP] Rename";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "[LSP] Code Action";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        desc = "[LSP] Line diagnostics";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "]d";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "[LSP] Next diagnostic";
        silent = true;
      };
    }

    {
      mode = "n";
      key = "[d";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "[LSP] Previous diagnostic";
        silent = true;
      };
    }
  ];
}
