{
  plugins = {
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      servers = {
        lua_ls = {
          enable = true;
        };
        nil_ls = {
          enable = true;
        };
        pylsp = {
          enable = true;
        };
        ruff = {
          enable = true;
        };
        pyright = {
          enable = true;
        };
        gopls = {
          enable = true;
        };
        hls = {
          enable = true;
          installGhc = false;
        };
        clangd = {
          enable = true;
        };
        jsonls = {
          enable = true;
        };
        zls = {
          enable = true;
        };
        elixirls = {
          enable = true;
        };
        rubocop = {
          enable = true;
        };
        taplo = {
          enable = true;
        };
      };
    };
  };
  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
