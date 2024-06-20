{
  globals.mapleader = " ";

  keymaps = [
    # Whichkey Sections
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
    }
    {
      mode = ["n" "v"];
      key = "<leader>g";
      action = "+git";
    }
    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
    }
    {
      mode = "n";
      key = "<leader><Tab>";
      action = "+tab";
    }
    {
      mode = "n";
      key = "<leader>b";
      action = "+buffer";
    }
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>d";
    #   action = "+debug";
    # }
    {
      mode = ["n" "v"];
      key = "<leader>c";
      action = "+code";
    }
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>t";
    #   action = "+test";
    # }
    {
      mode = "n";
      key = "<leader>x";
      action = "+quickfix";
    }
    # Whichkey Sections ends

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
        desc = "Delete Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>`";
      action = "<cmd>e #<cr>";
      options = {
        desc = "Switch to Other Buffer";
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
        desc = "Other Window";
      };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete Window";
      };
    }
    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split Window Below";
      };
    }
    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split Window Right";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to Window Left";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to Window Right";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to Window Over";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to Window Bellow";
      };
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = "<cmd>resize +2<cr>";
      options = {
        desc = "Increase Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<cmd>resize -2<cr>";
      options = {
        desc = "Decrease Window Height";
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options = {
        desc = "Decrease Window Width";
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options = {
        desc = "Increase Window Width";
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save File";
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
        desc = "Redraw/Clear hlsearch/Diff Update";
      };
    }
    # UI ends

    # Move Lines
    {
      mode = "n";
      key = "<A-j>";
      action = "<cmd>m .+1<cr>==";
      options = {desc = "Move Down";};
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<cmd>m .-2<cr>==";
      options = {desc = "Move Up";};
    }
    {
      mode = "i";
      key = "<A-j>";
      action = "<esc><cmd>m .+1<cr>==gi";
      options = {desc = "Move Down";};
    }
    {
      mode = "i";
      key = "<A-k>";
      action = "<esc><cmd>m .-2<cr>==gi";
      options = {desc = "Move Up";};
    }
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<CR>gv=gv";
      options = {desc = "Move Down";};
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<CR>gv=gv";
      options = {desc = "Move Up";};
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }
    # Move Lines ends

    # General
    # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    # map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
    # map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
    # map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
    # map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
    # map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
    # map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
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
    # map("v", "<", "<gv")
    # map("v", ">", ">gv")
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

    # Quickfix
    # map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
    # map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
    #
    # map("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
    # map("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })
    {
      mode = "n";
      key = "<leader>xl";
      action = "<cmd>lopen<cr>";
      options = {desc = "Location List";};
    }
    {
      mode = "n";
      key = "<leader>xq";
      action = "<cmd>copen<cr>";
      options = {desc = "Quickfix List";};
    }
    {
      mode = "n";
      key = "[q";
      action = ":<C-u>silent! cprev<cr>";
      options = {
        silent = true;
        desc = "Previous Quickfix";
      };
    }
    {
      mode = "n";
      key = "]q";
      action = ":<C-u>silent! cnext<cr>";
      options = {
        silent = true;
        desc = "Next Quickfix";
      };
    }

    # General ends

    # {
    #   mode = "n";
    #   key = "<C-d>";
    #   action = "<C-d>zz";
    #   options = {
    #     desc = "Allow C-d and C-u to keep the cursor in the middle";
    #   };
    # }
    #
    # {
    #   mode = "n";
    #   key = "<C-u>";
    #   action = "<C-u>zz";
    #   options = {
    #     desc = "Allow C-d and C-u to keep the cursor in the middle";
    #   };
    # }
    #
    # {
    #   mode = "n";
    #   key = "n";
    #   action = "nzzzv";
    #   options = {desc = "Allow search terms to stay in the middle ";};
    # }
    #
    # {
    #   mode = "n";
    #   key = "N";
    #   action = "Nzzzv";
    #   options = {desc = "Allow search terms to stay in the middle ";};
    # }

    # {
    #   mode = "x";
    #   key = "<leader>p";
    #   action = ''"_dP'';
    #   options = {desc = "Deletes to void register and paste over";};
    # }
    #
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>y";
    #   action = ''"+y'';
    #   options = {desc = "Copy to system clipboard";};
    # }
    #
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>Y";
    #   action = ''"+Y'';
    #   options = {desc = "Copy to system clipboard";};
    # }
    #
    # {
    #   mode = ["n" "v"];
    #   key = "<leader>D";
    #   action = ''"_d'';
    #   options = {desc = "Delete to void register";};
    # }
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
