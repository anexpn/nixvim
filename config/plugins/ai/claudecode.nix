{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "claudecode.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "coder";
        repo = "claudecode.nvim";
        rev = "main";
        sha256 = "sha256-b4jCKIqowkVuWhI9jxthluZISBOnIc8eOIgkw5++HRY=";
      };
    })
  ];

  extraConfigLua = ''
    require('claudecode').setup({})
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>ao";
      action = "<cmd>ClaudeCode<cr>";
      options = {
        desc = "Toggle Claude Code";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>af";
      action = "<cmd>ClaudeCodeFocus<cr>";
      options = {
        desc = "Focus Claude Code";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>as";
      action = "<cmd>ClaudeCodeSend<cr>";
      options = {
        desc = "Send to Claude Code";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>aa";
      action = "<cmd>ClaudeCodeDiffAccept<cr>";
      options = {
        desc = "Accept Claude diff";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ad";
      action = "<cmd>ClaudeCodeDiffDeny<cr>";
      options = {
        desc = "Deny Claude diff";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ab";
      action = "<cmd>ClaudeCodeAdd %<cr>";
      options = {
        desc = "Add current buffer";
        silent = true;
      };
    }
  ];
}