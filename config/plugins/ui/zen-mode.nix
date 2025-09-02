{
  plugins.zen-mode = {
    enable = true;
    lazyLoad = {
      settings = {
        cmd = "ZenMode";
      };
    };
    settings = {
      window = {
        backdrop = 0.95;
        width = 120;
        height = 1;
        options = {
          signcolumn = "no";
          number = false;
          relativenumber = false;
          cursorline = false;
          cursorcolumn = false;
          foldcolumn = "0";
          list = false;
        };
      };
      plugins = {
        options = {
          enabled = true;
          ruler = false;
          showcmd = false;
          laststatus = 0;
        };
        twilight = {enabled = true;};
        gitsigns = {enabled = false;};
        tmux = {enabled = false;};
        todo-comments = {enabled = false;};
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uz";
      action = "<cmd>ZenMode<CR>";
      options = {
        desc = "Toggle Zen Mode";
        silent = true;
      };
    }
  ];
}

