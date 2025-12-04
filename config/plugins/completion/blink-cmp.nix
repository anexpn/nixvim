{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "super-tab";
          "<C-space>" = false;
          "<C-S-space>" = [
            "show"
            "show_documentation"
            "hide_documentation"
          ];
        };
        completion = {
          trigger = {
            show_in_snippet = false;
          };
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            # "copilot"
          ];
          providers = {
            # copilot = {
            #   async = true;
            #   module = "blink-cmp-copilot";
            #   name = "copilot";
            #   score_offset = 100;
            # };
            lazydev = {
              name = "lazydev";
              module = "lazydev.integrations.blink";
              score_offset = 100;
            };
          };
        };
      };
    };
    # blink-cmp-copilot = {
    #   enable = true;
    # };
    lazydev = {
      enable = true;
    };
  };
}
