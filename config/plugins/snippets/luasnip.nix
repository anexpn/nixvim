{pkgs, ...}: {
  plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
    fromVscode = [
      {
        lazyLoad = true;
        paths = "${pkgs.vimPlugins.friendly-snippets}";
      }
    ];
  };
  keymaps = [
    {
      key = "<M-l>";
      action.__raw = ''function() require("luasnip").jump(1) end'';
      options = {
        silent = true;
      };
      mode = ["i" "s"];
    }
    {
      key = "<M-h>";
      action.__raw = ''function() require("luasnip").jump(-1) end'';
      options = {
        silent = true;
      };
      mode = ["i" "s"];
    }
  ];
}
