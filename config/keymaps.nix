{
  globals.mapleader = " ";

  keymaps = [
    # Which-key group definitions are now handled in whichkey.nix

    # Tabs
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>tabnext<cr>";
      options = {
        silent = true;
        desc = "Next Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab><S-tab>";
      action = "<cmd>tabprevious<cr>";
      options = {
        silent = true;
        desc = "Previous Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>n";
      action = "<cmd>tabnew<cr>";
      options = {
        silent = true;
        desc = "New Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<cmd>tabclose<cr>";
      options = {
        silent = true;
        desc = "Close Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>o";
      action = "<cmd>tabonly<cr>";
      options = {
        silent = true;
        desc = "Close Other Tabs";
      };
    }
    # Tabs ends

    # Buffers
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Close Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>`";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch Buffer (Alt)";
      };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprevious<cr>";
      options = {
        desc = "Previous Buffer";
      };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<cr>";
      options = {
        desc = "Next Buffer";
      };
    }
    # Buffers ends

    # Windows
    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-W>p";
      options = {
        silent = true;
        desc = "Switch Window";
      };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Close Window";
      };
    }
    {
      mode = "n";
      key = "<leader>w\"";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split Window Below";
      };
    }
    {
      mode = "n";
      key = "<leader>w%";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split Window Right";
      };
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = "<cmd>resize +2<cr>";
      options = {
        desc = "Expand Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<cmd>resize -2<cr>";
      options = {
        desc = "Shrink Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options = {
        desc = "Shrink Window Width";
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options = {
        desc = "Expand Window Width";
      };
    }
    # Windows ends

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit All";
      };
    }
    # Quit/Session ends

    # UI
    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }
    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }
    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }
    {
      mode = "n";
      key = "<leader>ur";
      action = "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>";
      options = {
        silent = true;
        desc = "Redraw Screen & Clear Highlights";
      };
    }
    # UI ends

    {
      mode = "n";
      key = "J";
      action = "myJ`y"; # Side effect: overwrite the y mark
      options = {
        desc = "Join Lines (Keep Cursor Position)";
      };
    }

    # General
    # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    {
      mode = "n";
      key = "n";
      action = "'Nn'[v:searchforward].'zv'";
      options = {
        expr = true;
        desc = "Next Search Result";
      };
    }
    {
      mode = "x";
      key = "n";
      action = "'Nn'[v:searchforward]";
      options = {
        expr = true;
        desc = "Next Search Result";
      };
    }
    {
      mode = "o";
      key = "n";
      action = "'Nn'[v:searchforward]";
      options = {
        expr = true;
        desc = "Next Search Result";
      };
    }
    {
      mode = "n";
      key = "N";
      action = "'nN'[v:searchforward].'zv'";
      options = {
        expr = true;
        desc = "Previous Search Result";
      };
    }
    {
      mode = "x";
      key = "N";
      action = "'nN'[v:searchforward]";
      options = {
        expr = true;
        desc = "Previous Search Result";
      };
    }
    {
      mode = "o";
      key = "N";
      action = "'nN'[v:searchforward]";
      options = {
        expr = true;
        desc = "Previous Search Result";
      };
    }
    # better indenting
    {
      mode = "v";
      key = "<";
      action = "<gv";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
    }
    # General ends

    # Quickfix
    {
      mode = "n";
      key = "<leader>xl";
      action = "<cmd>lopen<cr>";
      options = {
        desc = "Open Location List";
      };
    }
    {
      mode = "n";
      key = "<leader>xq";
      action = "<cmd>copen<cr>";
      options = {
        desc = "Open Quickfix List";
      };
    }
    {
      mode = "n";
      key = "[q";
      action = ":<C-u>silent! cprev<cr>";
      options = {
        silent = true;
        desc = "Previous Quickfix Item";
      };
    }
    {
      mode = "n";
      key = "]q";
      action = ":<C-u>silent! cnext<cr>";
      options = {
        silent = true;
        desc = "Next Quickfix Item";
      };
    }
    # Quickfix ends

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>Y";
      action = ''"+y'';
      options = {
        desc = "Copy to System Clipboard";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>P";
      action = ''"+p'';
      options = {
        desc = "Paste from System Clipboard";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>D";
      action = ''"_d'';
      options = {
        desc = "Delete to Void Register";
      };
    }
  ];
  extraConfigLua = ''
    function ToggleLineNumber()
      if vim.wo.number then
        vim.wo.number = false
      else
        vim.wo.number = true
        vim.wo.relativenumber = false
      end
    end

    function ToggleRelativeLineNumber()
      if vim.wo.relativenumber then
        vim.wo.relativenumber = false
      else
        vim.wo.relativenumber = true
        vim.wo.number = false
      end
    end

    function ToggleWrap()
      vim.wo.wrap = not vim.wo.wrap
    end
  '';
}
