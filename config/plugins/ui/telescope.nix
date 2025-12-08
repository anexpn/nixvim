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
      zoxide = {
        enable = true;
        settings = {
          mappings = {
            "<C-b>" = {
              action = {
                __raw = ''
                  function(selection)
                    require('telescope').extensions.file_browser.file_browser({ cwd = selection.path })
                  end
                '';
              };
              keepinsert = true;
            };
          };
          prompt_title = "Zoxide Folder List";
        };
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
        mappings = {
          n = {
            "s" = {
              __raw = "flash_telescope";
            };
          };
          i = {
            "<C-s>" = {
              __raw = "flash_telescope";
            };
          };
        };
      };
      pickers = {
        colorscheme = {
          enable_preview = true;
        };
      };
    };
  };
  keymaps = [
    # Find and search operations
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope find_files<cr>";
      options = {
        desc = "Find Files (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Telescope live_grep<cr>";
      options = {
        desc = "Search in Files (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = "<cmd>Telescope grep_string<cr>";
      options = {
        desc = "Search Word (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>fR";
      action = "<cmd>Telescope resume<cr>";
      options = {
        desc = "Resume Last Search";
      };
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>Telescope oldfiles<cr>";
      options = {
        desc = "Recent Files";
      };
    }
    {
      mode = "n";
      key = "<leader>,";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "List Buffers";
      };
    }
    {
      mode = "n";
      key = "<C-p>";
      action = "<cmd>Telescope git_files<cr>";
      options = {
        desc = "Find Files (Git)";
      };
    }
    # Git operations
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>Telescope git_commits<cr>";
      options = {
        desc = "Search Git Commits";
      };
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Telescope git_status<cr>";
      options = {
        desc = "Search Git Status";
      };
    }
    # Search operations
    {
      mode = "n";
      key = "<leader>sa";
      action = "<cmd>Telescope autocommands<cr>";
      options = {
        desc = "Autocommands";
      };
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = "<cmd>Telescope current_buffer_fuzzy_find<cr>";
      options = {
        desc = "Search Current Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>;";
      action = "<cmd>Telescope current_buffer_fuzzy_find<cr>";
      options = {
        desc = "Search Current Buffer (Alt)";
      };
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = "<cmd>Telescope command_history<cr>";
      options = {
        desc = "Command History";
      };
    }
    {
      mode = "n";
      key = "<leader>sC";
      action = "<cmd>Telescope commands<cr>";
      options = {
        desc = "Commands";
      };
    }
    {
      mode = "n";
      key = "<leader>sD";
      action = "<cmd>Telescope diagnostics<cr>";
      options = {
        desc = "Diagnostics (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>Telescope help_tags<cr>";
      options = {
        desc = "Help Pages";
      };
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = "<cmd>Telescope highlights<cr>";
      options = {
        desc = "Highlights";
      };
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "<cmd>Telescope keymaps<cr>";
      options = {
        desc = "Keymaps";
      };
    }
    {
      mode = "n";
      key = "<leader>sM";
      action = "<cmd>Telescope man_pages<cr>";
      options = {
        desc = "Manual Pages";
      };
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = "<cmd>Telescope marks<cr>";
      options = {
        desc = "Marks";
      };
    }
    {
      mode = "n";
      key = "<leader>so";
      action = "<cmd>Telescope vim_options<cr>";
      options = {
        desc = "Options";
      };
    }
    {
      mode = "n";
      key = "<leader>sR";
      action = "<cmd>Telescope resume<cr>";
      options = {
        desc = "Resume Last Search";
      };
    }
    {
      mode = "n";
      key = "<leader>.";
      action = "<cmd>Telescope resume<cr>";
      options = {
        desc = "Resume Last Search (Alt)";
      };
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>Telescope lsp_document_symbols<cr>";
      options = {
        desc = "Symbols (Buffer)";
      };
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = "<cmd>Telescope lsp_workspace_symbols<cr>";
      options = {
        desc = "Symbols (Workspace)";
      };
    }
    # UI operations
    {
      mode = "n";
      key = "<leader>uC";
      action = "<cmd>Telescope colorscheme<cr>";
      options = {
        desc = "Colorscheme";
      };
    }
    # Extension keymaps
    {
      mode = "n";
      key = "<leader>sz";
      action = "<cmd>Telescope zoxide list<cr>";
      options = {
        desc = "Zoxide";
      };
    }
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

  extraConfigLua = ''
    function flash_telescope(prompt_bufnr)
      require("flash").jump({
        pattern = "^",
        label = { after = { 0, 0 } },
        search = {
          mode = "search",
          exclude = {
            function(win)
              return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "TelescopeResults"
            end,
          },
        },
        action = function(match)
          local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
          picker:set_selection(match.pos[1] - 1)
        end,
      })
    end
  '';
}
