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
          desc = "Find Files (Workspace)";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Search in Files (Workspace)";
        };
      };
      "<leader>fR" = {
        action = "resume";
        options = {
          desc = "Resume Last Search";
        };
      };
      "<leader>fr" = {
        action = "oldfiles";
        options = {
          desc = "Recent Files";
        };
      };
      "<leader>," = {
        action = "buffers";
        options = {
          desc = "List Buffers";
        };
      };
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Find Files (Git)";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Search Git Commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Search Git Status";
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
          desc = "Search Current Buffer";
        };
      };
      "<leader>;" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Search Current Buffer (Alt)";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "Command History";
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
          desc = "Diagnostics (Workspace)";
        };
      };
      "<leader>sh" = {
        action = "help_tags";
        options = {
          desc = "Help Pages";
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
          desc = "Manual Pages";
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
          desc = "Resume Last Search";
        };
      };
      "<leader>." = {
        action = "resume";
        options = {
          desc = "Resume Last Search (Alt)";
        };
      };
      "<leader>ss" = {
        action = "lsp_document_symbols";
        options = {
          desc = "Symbols (Buffer)";
        };
      };
      "<leader>sS" = {
        action = "lsp_workspace_symbols";
        options = {
          desc = "Symbols (Workspace)";
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
        desc = "Diagnostics (Buffer)";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File Browser (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File Browser (Current File)";
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope frecency workspace=CWD prompt_title=Frecency(CWD)<cr>";
      options = {
        desc = "Frequent Files (Current Dir)";
      };
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope frecency prompt_title=Frecency<cr>";
      options = {
        desc = "Frequent Files (All)";
      };
    }
  ];
}
