{
  plugins.harpoon = {
    enable = true;
    autoLoad = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>j";
      action.__raw = "function() require('harpoon'):list():add() end";
      options = {
        silent = true;
        desc = "Harpoon add";
      };
    }
    {
      mode = "n";
      key = "<leader>k";
      action.__raw = ''
        function()
          local harpoon = require('harpoon')
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end
      '';
      options = {
        silent = true;
        desc = "Harpoon quick menu";
      };
    }
    {
      mode = "n";
      key = "<leader>1";
      action.__raw = "function() require('harpoon'):list():select(1) end";
      options = {
        silent = true;
        desc = "Harpoon 1";
      };
    }
    {
      mode = "n";
      key = "<leader>2";
      action.__raw = "function() require('harpoon'):list():select(2) end";
      options = {
        silent = true;
        desc = "Harpoon 2";
      };
    }
    {
      mode = "n";
      key = "<leader>3";
      action.__raw = "function() require('harpoon'):list():select(3) end";
      options = {
        silent = true;
        desc = "Harpoon 3";
      };
    }
    {
      mode = "n";
      key = "<leader>4";
      action.__raw = "function() require('harpoon'):list():select(4) end";
      options = {
        silent = true;
        desc = "Harpoon 4";
      };
    }
  ];
}
