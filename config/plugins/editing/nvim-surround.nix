{
  plugins.nvim-surround = {
    enable = true;
    settings = {
      keymaps = {
        insert = "<C-g>s";
        insert_line = "<C-g>S";
        normal = "gz";         # Add surrounding: gz{motion}{char}
        normal_cur = "gzz";    # Add surrounding to current line
        normal_line = "gZ";    # Add surrounding to line
        normal_cur_line = "gZZ"; # Add surrounding to current line (line mode)
        visual = "gz";         # Surround selection in visual mode
        visual_line = "gZ";    # Surround selection in visual line mode
        delete = "gzd";        # Delete surrounding: gdz{char}
        change = "gzc";        # Change surrounding: gcz{target}{replacement}
        change_line = "gzC";   # Change surrounding (line mode)
      };
    };
  };
}
