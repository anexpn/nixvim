# ABOUTME: JSON/data explorer for visual navigation of structured data files
# ABOUTME: Renders JSON/YAML/TOML/XML as terminal-based graph interface with collapsible nodes
{pkgs, ...}: {
  extraPlugins = [
    {
      plugin = pkgs.vimUtils.buildVimPlugin {
        name = "videre.nvim";
        src = pkgs.fetchFromGitHub {
          owner = "Owen-Dechow";
          repo = "videre.nvim";
          rev = "224bfb4909d833f6b2282a14ca65464279d34b33";
          sha256 = "sha256-REv8rD9s6g1VbUsfR2xrHZNXePETXPrw83cIHAk1HoQ=";
        };
      };
    }
  ];

  extraConfigLua = ''
    require("videre").setup({})
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>uv";
      action = "<cmd>Videre<CR>";
      options = {
        desc = "Open Videre Data Explorer";
        silent = true;
      };
    }
  ];
}
