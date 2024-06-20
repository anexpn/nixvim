{
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
      options = {
        desc = "Workspace Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>TroubleToggle document_diagnostics<cr>";
      options = {
        desc = "Buffer Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>TroubleToggle loclist";
      options = {
        desc = "Location List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>TroubleToggle qflist";
      options = {
        desc = "Quickfix List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "[q";
      action = {
        __raw = ''
          function()
            if require("trouble").is_open() then
              require("trouble").previous({ skip_groups = true, jump = true })
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
