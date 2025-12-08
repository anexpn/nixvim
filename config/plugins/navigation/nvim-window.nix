# ABOUTME: Quick window navigation using letter hints to jump between windows
# ABOUTME: Simplifies window switching by showing visual hints instead of repeated Ctrl+W commands
{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nvim-window";
      src = pkgs.fetchFromGitHub {
        owner = "yorickpeterse";
        repo = "nvim-window";
        rev = "a8d965f158cff222713a3b3ab341445d331e6e3a";
        sha256 = "sha256-HSk7Q1he/mmlh3JwCVVCbfGIIRr78eoDPo/BcYyWflM=";
      };
    })
  ];

  extraConfigLua = ''
    require("nvim-window").setup({
      chars = {
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
      },
      border = "single",
      render = "float",
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>wj";
      action = "<cmd>lua require('nvim-window').pick()<CR>";
      options = {
        desc = "Pick window with hints";
        silent = true;
      };
    }
  ];
}
