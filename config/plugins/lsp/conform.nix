{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save =
        # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
          end
        '';
      notify_on_error = false;
      formatters_by_ft = {
        python = ["black"];
        lua = ["stylua"];
        nix = ["alejandra"];
      };
    };
  };

  extraConfigLua = ''
    _G.slow_format_filetypes = {}
  '';
}
