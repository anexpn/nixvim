{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableRefreshOnWrite = true;

    window = {
      width = 30;
    };

    filesystem = {
      followCurrentFile = {
        enabled = true;
      };
      useLibuvFileWatcher = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      action = ":Neotree toggle<CR>";
      options = {
        desc = "Toggle Neo-tree";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = ":Neotree focus<CR>";
      options = {
        desc = "Focus Neo-tree";
        silent = true;
      };
    }
  ];
}
