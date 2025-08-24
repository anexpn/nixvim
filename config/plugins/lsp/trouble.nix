{
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "Diagnostics (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options = {
        desc = "Diagnostics (Buffer)";
      };
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<cr>";
      options = {
        desc = "Open Location List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<cr>";
      options = {
        desc = "Open Quickfix List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
      options = {
        desc = "[LSP] Document Symbols";
      };
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options = {
        desc = "[LSP] Definitions & References";
      };
    }
    {
      mode = "n";
      key = "[q";
      action = {
        __raw = ''
          function()
            if require("trouble").is_open() then
              require("trouble").prev({ skip_groups = true, jump = true })
            else
              local ok, err = pcall(vim.cmd.cprev)
              if not ok then
                vim.notify(err, vim.log.levels.ERROR)
              end
            end
          end
        '';
      };
      options = {
        desc = "Previous Trouble/Quickfix Item";
      };
    }
    {
      mode = "n";
      key = "]q";
      action = {
        __raw = ''
          function()
            if require("trouble").is_open() then
              require("trouble").next({ skip_groups = true, jump = true })
            else
              local ok, err = pcall(vim.cmd.cnext)
              if not ok then
                vim.notify(err, vim.log.levels.ERROR)
              end
            end
          end
        '';
      };
      options = {
        desc = "Next Trouble/Quickfix Item";
      };
    }
  ];
}
