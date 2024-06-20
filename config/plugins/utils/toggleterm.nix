{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = ''[[<c-\>]]'';
      size = ''
        function(term)
          if term.direction == "horizontal" then
            return 20
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end
      '';
    };
  };
  keymaps = [
    {
      mode = "t";
      key = "<esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Enter Normal Mode";
      };
    }
    {
      mode = "t";
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
      options = {
        desc = "Go to Left Window";
      };
    }
    {
      mode = "t";
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
      options = {
        desc = "Go to Right Window";
      };
    }
    {
      mode = "t";
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
      options = {
        desc = "Go to Lower Window";
      };
    }
    {
      mode = "t";
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
      options = {
        desc = "Go to Upper Window";
      };
    }
  ];
}
