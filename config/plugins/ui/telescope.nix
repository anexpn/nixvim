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
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "Find Workspace Files";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>fR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>fr" = {
        action = "oldfiles";
        options = {
          desc = "Recent";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<leader>," = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Search git files";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Status";
        };
      };
      "<leader>sa" = {
        action = "autocommands";
        options = {
          desc = "Auto Commands";
        };
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Current Buffer";
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
          desc = "Workspace Diagnostics";
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
          desc = "Highlight Groups";
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
          desc = "Man Pages";
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
          desc = "Resume";
        };
      };
      "<leader>ss" = {
        action = "lsp_document_symbols";
        options = {
          desc = "Buffer Symbols";
        };
      };
      "<leader>sS" = {
        action = "lsp_workspace_symbols";
        options = {
          desc = "Workspace Symbols";
        };
      };
      "<leader>uC" = {
        action = "colorscheme";
        options = {
          desc = "Colorscheme Preview";
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
        desc = "Buffer Diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File Browser Workspace";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File Browser Current";
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope frecency workspace=CWD prompt_title=Frecency(CWD)<cr>";
      options = {
        desc = "Files Frecency (CWD)";
      };
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>Telescope frecency prompt_title=Frecency<cr>";
      options = {
        desc = "Files Frecency";
      };
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
