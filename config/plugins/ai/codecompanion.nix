{
  plugins.codecompanion = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>ac";
      action = "<cmd>CodeCompanionChat<cr>";
      options = {
        desc = "CodeCompanion Chat";
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>ax";
      action = "<cmd>CodeCompanionActions<cr>";
      options = {
        desc = "CodeCompanion Actions";
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>ai";
      action = ":CodeCompanion ";
      options = {
        desc = "CodeCompanion Inline";
        silent = false;
      };
    }
  ];
}