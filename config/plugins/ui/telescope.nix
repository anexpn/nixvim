{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
      frecency = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
      pickers = {
        colorscheme = {
          enable_preview = true;
        };
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "Find files (workspace)";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (workspace)";
        };
      };
      "<leader>fR" = {
        action = "resume";
        options = {
          desc = "Resume last search";
        };
      };
      "<leader>fr" = {
        action = "oldfiles";
        options = {
          desc = "Recent files";
        };
      };
      "<leader>," = {
        action = "buffers";
        options = {
          desc = "List buffers";
        };
      };
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Find files (git)";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Search git commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Search git status";
        };
      };
      "<leader>sa" = {
        action = "autocommands";
        options = {
          desc = "Autocommands";
        };
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Current buffer";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "Command history";
        };
      };
      "<leader>sC" = {
        action = "commands";
        options = {
          desc = "Commands";
        };
      };
      "<leader>sD" = {
        action = "diagnostics";
        options = {
          desc = "Diagnostics (workspace)";
        };
      };
      "<leader>sh" = {
        action = "help_tags";
        options = {
          desc = "Help pages";
        };
      };
      "<leader>sH" = {
        action = "highlights";
        options = {
          desc = "Highlights";
        };
      };
      "<leader>sk" = {
        action = "keymaps";
        options = {
          desc = "Keymaps";
        };
      };
      "<leader>sM" = {
        action = "man_pages";
        options = {
          desc = "Man pages";
        };
      };
      "<leader>sm" = {
        action = "marks";
        options = {
          desc = "Marks";
        };
      };
      "<leader>so" = {
        action = "vim_options";
        options = {
          desc = "Options";
        };
      };
      "<leader>sR" = {
        action = "resume";
        options = {
          desc = "Resume last search";
        };
      };
      "<leader>ss" = {
        action = "lsp_document_symbols";
        options = {
          desc = "Symbols (buffer)";
        };
      };
      "<leader>sS" = {
        action = "lsp_workspace_symbols";
        options = {
          desc = "Symbols (workspace)";
        };
      };
      "<leader>uC" = {
        action = "colorscheme";
        options = {
          desc = "Colorscheme";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Diagnostics (buffer)";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File browser (workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File browser (current file)";
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope frecency workspace=CWD prompt_title=Frecency(CWD)<cr>";
      options = {
        desc = "File frecency (cwd)";
      };
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope frecency prompt_title=Frecency<cr>";
      options = {
        desc = "File frecency";
      };
    }
  ];
}
