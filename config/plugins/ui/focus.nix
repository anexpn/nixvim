# ABOUTME: Auto-resizing split window manager with golden ratio
# ABOUTME: Automatically manages window sizes and focuses
{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "focus.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "nvim-focus";
        repo = "focus.nvim";
        rev = "26a755c363284547196ceb258a83f92608d7979b";
        sha256 = "sha256-u5/kP3b3txEyyPPu3MTKpINDXhQPuC3/HK2aqste1sw=";
      };
    })
  ];

  extraConfigLua = ''
    require("focus").setup({
      enable = true,
      commands = true,
      autoresize = {
        enable = true,
        width = 0,
        height = 0,
        minwidth = 0,
        minheight = 0,
        height_quickfix = 10,
      },
      split = {
        bufnew = false,
        tmux = false,
      },
      ui = {
        number = false,
        relativenumber = false,
        hybridnumber = false,
        absolutenumber_unfocussed = false,
        cursorline = true,
        cursorcolumn = false,
        colorcolumn = {
          enable = false,
          list = '+1',
        },
        signcolumn = true,
        winhighlight = false,
      }
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>uf";
      action = "<cmd>FocusToggle<CR>";
      options = {
        desc = "Toggle Focus Auto-resize";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>we";
      action = "<cmd>FocusEqualise<CR>";
      options = {
        desc = "Equalise Window Sizes";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>wm";
      action = "<cmd>FocusMaximise<CR>";
      options = {
        desc = "Maximise Current Window";
        silent = true;
      };
    }
  ];
}
