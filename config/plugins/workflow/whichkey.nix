{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "classic";
      delay = 200;

      # Window configuration
      win = {
        no_overlap = true;
        padding = [1 2];
        title = true;
        title_pos = "center";
        zindex = 1000;
        border = "rounded";
      };

      # Layout configuration
      layout = {
        width = {
          min = 20;
          max = 50;
        };
        spacing = 3;
        align = "left";
      };

      # Icon configuration
      icons = {
        mappings = true;
        breadcrumb = "»";
        separator = "➜";
        group = "+";
        ellipsis = "…";

        # Custom key representations
        keys = {
          Up = " ";
          Down = " ";
          Left = " ";
          Right = " ";
          C = "󰘴 ";
          M = "󰘵 ";
          D = "󰘳 ";
          S = "󰘶 ";
          CR = "󰌑 ";
          Esc = "󱊷 ";
          ScrollWheelDown = "󱕐 ";
          ScrollWheelUp = "󱕑 ";
          NL = "󰌑 ";
          BS = "󰁮";
          Space = "󱁐 ";
          Tab = "󰌒 ";
          F1 = "󱊫";
          F2 = "󱊬";
          F3 = "󱊭";
          F4 = "󱊮";
          F5 = "󱊯";
          F6 = "󱊰";
          F7 = "󱊱";
          F8 = "󱊲";
          F9 = "󱊳";
          F10 = "󱊴";
          F11 = "󱊵";
          F12 = "󱊶";
        };
      };

      # Key specification with proper intuitive Nerd Font icons
      spec = [
        {
          "__unkeyed-1" = "<leader>f";
          group = "File";
          icon = {
            icon = "󰈙";
            color = "blue";
          };
        }
        {
          "__unkeyed-1" = "<leader>s";
          group = "Search";
          icon = {
            icon = "󰍉";
            color = "yellow";
          };
        }
        {
          "__unkeyed-1" = "<leader>g";
          group = "Git";
          icon = {
            icon = "󰊢";
            color = "orange";
          };
        }
        {
          "__unkeyed-1" = "<leader>c";
          group = "Code";
          icon = {
            icon = "󰨞";
            color = "cyan";
          };
        }
        {
          "__unkeyed-1" = "<leader>u";
          group = "UI";
          icon = {
            icon = "󰙵";
            color = "purple";
          };
        }
        {
          "__unkeyed-1" = "<leader>w";
          group = "Window";
          icon = {
            icon = "󰖲";
            color = "blue";
          };
        }
        {
          "__unkeyed-1" = "<leader>b";
          group = "Buffer";
          icon = {
            icon = "󰓩";
            color = "cyan";
          };
        }
        {
          "__unkeyed-1" = "<leader>x";
          group = "Quickfix";
          icon = {
            icon = "󰁨";
            color = "red";
          };
        }
        {
          "__unkeyed-1" = "<leader>q";
          group = "Quit";
          icon = {
            icon = "󰗼";
            color = "red";
          };
        }
        {
          "__unkeyed-1" = "<leader><tab>";
          group = "Tab";
          icon = {
            icon = "󰓩";
            color = "azure";
          };
        }
        {
          "__unkeyed-1" = "<leader>t";
          group = "Test";
          icon = {
            icon = "󰙨";
            color = "green";
          };
        }
        # Individual keymap icons
        {
          "__unkeyed-1" = "<leader>j";
          desc = "Add to Harpoon";
          icon = {
            icon = "󰜌";
            color = "blue";
          };
        }
        {
          "__unkeyed-1" = "<leader>Y";
          desc = "Copy to System Clipboard";
          icon = {
            icon = "󰘌";
            color = "yellow";
          };
        }
        {
          "__unkeyed-1" = "<leader>P";
          desc = "Paste from System Clipboard";
          icon = {
            icon = "󰘎";
            color = "green";
          };
        }
        {
          "__unkeyed-1" = "<leader>D";
          desc = "Delete to Void Register";
          icon = {
            icon = "󰎩";
            color = "red";
          };
        }
        {
          "__unkeyed-1" = "<leader>uz";
          desc = "Toggle Zen Mode";
          icon = {
            icon = "󰚀";
            color = "purple";
          };
        }
        {
          "__unkeyed-1" = "<leader>gn";
          desc = "Neogit";
          icon = {
            icon = "󰊢";
            color = "orange";
          };
        }
        {
          "__unkeyed-1" = "<leader>-";
          desc = "Open yazi file manager";
          icon = {
            icon = "󰇥";
            color = "blue";
          };
        }
      ];
    };
  };
}
