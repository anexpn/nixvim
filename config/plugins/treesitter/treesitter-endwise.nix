# ABOUTME: Auto-closes blocks with 'end' in Elixir, Ruby, Lua, etc.
# ABOUTME: Uses treesitter to intelligently insert closing keywords.
{pkgs, ...}: {
  extraPlugins = [pkgs.vimPlugins.nvim-treesitter-endwise];
}
