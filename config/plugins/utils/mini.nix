{
  plugins = {
    mini = {
      enable = true;
      modules = {
        ai = {};
        icons = {};
        surround = {
          mappings = {
            add = "gsa"; # Add surrounding in Normal and Visual modes
            delete = "gsd"; # Delete surrounding
            find = "gsf"; # Find surrounding (to the right)
            find_left = "gsF"; # Find surrounding (to the left)
            highlight = "gsh"; # Highlight surrounding
            replace = "gsr"; # Replace surrounding
            update_n_lines = "gsn"; # Update `n_lines`
          };
        };
      };
      mockDevIcons = true;
    };
    # which-key.settings.operators = {
    #   gsa = "Add surrounding";
    # };
    # deprecated? use settings.defer?
    which-key.settings.spec = [
      {
        __unkeyed-1 = "gs";
        group = "+surround";
      }
    ];
    # which-key.registrations = {
    #   "gs" = "+surround";
    # };
  };
}
