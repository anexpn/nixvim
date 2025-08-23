{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    neotest-python
  ];

  plugins.neotest = {
    enable = true;
    settings = {
      adapters = [
        ''
          require("neotest-python")({
            dap = { justMyCode = false }
          })
        ''
      ];
      discovery = {
        enabled = false;
        concurrent = 1;
      };
      running = {
        concurrent = true;
      };
      summary = {
        enabled = true;
        animated = true;
        follow = true;
        expandErrors = true;
      };
      output = {
        enabled = true;
        open_on_run = "short";
      };
      output_panel = {
        enabled = true;
        open = "botright split | resize 15";
      };
      quickfix = {
        enabled = false;
      };
      status = {
        enabled = true;
        signs = true;
        virtual_text = false;
      };
      strategies = {
        integrated = {
          height = 40;
          width = 120;
        };
      };
      icons = {
        child_indent = "│";
        child_prefix = "├";
        collapsed = "─";
        expanded = "╮";
        failed = "✖";
        final_child_indent = " ";
        final_child_prefix = "╰";
        non_collapsible = "─";
        passed = "✓";
        running = "○";
        running_animated = ["/" "|" "\\" "-" "/" "|" "\\" "-"];
        skipped = "○";
        unknown = "?";
        watching = "👁";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = "+test";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>lua require('neotest').run.run()<CR>";
      options = {
        desc = "Run nearest test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tT";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      options = {
        desc = "Run current test file";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>";
      options = {
        desc = "Debug nearest test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>lua require('neotest').run.stop()<CR>";
      options = {
        desc = "Stop test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ta";
      action = "<cmd>lua require('neotest').run.attach()<CR>";
      options = {
        desc = "Attach to test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tS";
      action = "<cmd>lua require('neotest').summary.toggle()<CR>";
      options = {
        desc = "Toggle test summary";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>lua require('neotest').output.open({enter = true, auto_close = true})<CR>";
      options = {
        desc = "Show test output";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tO";
      action = "<cmd>lua require('neotest').output_panel.toggle()<CR>";
      options = {
        desc = "Toggle output panel";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>lua require('neotest').run.run_last()<CR>";
      options = {
        desc = "Run last test";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>lua require('neotest').watch.toggle(vim.fn.expand('%'))<CR>";
      options = {
        desc = "Watch current file";
        silent = true;
      };
    }
  ];
}