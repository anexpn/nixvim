{
  opts = {
    # Enable relative line numbers
    number = true;
    relativenumber = true;

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    expandtab = true;

    # Enable auto indenting and set it to spaces
    smartindent = true;
    shiftwidth = 2;

    # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    breakindent = true;

    # Enable incremental searching
    hlsearch = true;
    incsearch = true;

    # Enable text wrap
    wrap = true;

    # Better splitting
    splitbelow = true;
    splitright = true;

    # Enable mouse mode
    mouse = "a"; # Mouse

    # Enable ignorecase + smartcase for better searching
    ignorecase = true;
    smartcase = true; # Don't ignore case with capitals
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Decrease updatetime
    updatetime = 50; # faster completion (4000ms default)

    # Set completeopt to have a better completion experience
    completeopt = ["menuone" "noselect" "noinsert"]; # mostly just for cmp

    # Enable persistent undo history
    swapfile = false;
    backup = false;
    undofile = true;

    # Enable 24-bit colors
    termguicolors = true;

    # Enable the sign column to prevent the screen from jumping
    # signcolumn = "yes";

    # Enable cursor line highlight
    cursorline = true; # Highlight the line where the cursor is located

    # Set fold settings
    # These options were reccommended by nvim-ufo
    # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;

    # Always keep 8 lines above/below cursor unless at start/end of file
    scrolloff = 8;

    # Place a column line
    # colorcolumn = "80";

    # Reduce which-key timeout to 10ms
    timeoutlen = 10;

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";

    # More space in the neovim command line for displaying messages
    cmdheight = 0;

    # We don't need to see things like INSERT anymore
    showmode = false;

    guifont = "Rec Mono Casual,Fira Code Nerd Font:h18";
  };
  extraConfigLua = ''
    if vim.fn.has("nvim-0.10") == 1 then
      vim.opt.smoothscroll = true
    end

    -- Custom command to show recently added plugins and their usage
    vim.api.nvim_create_user_command('RecentPlugins', function()
      local recent_plugins = {
        {
          name = "neotest",
          date = "2025-08-23", 
          description = "Extensible test framework with Python support",
          keymaps = {
            "<leader>tt = Run nearest test",
            "<leader>tT = Run current test file",
            "<leader>td = Debug nearest test",
            "<leader>ts = Stop test",
            "<leader>tS = Toggle test summary",
            "<leader>to = Show test output",
            "<leader>tO = Toggle output panel",
            "<leader>tl = Run last test",
            "<leader>tw = Watch current file"
          },
          usage = "Use <leader>tt to run tests, <leader>tS for summary panel"
        },
        {
          name = "grug-far",
          date = "2025-08-23",
          description = "Powerful find and replace with live preview",
          keymaps = {
            "<leader>sr = Open grug-far",
            "<leader>sw = Search word under cursor",
            "<leader>sf = Search in current file",
            "<leader>sF = Search in all files"
          },
          usage = "Use <leader>sr to open find/replace interface with live preview"
        },
        {
          name = "nvim-surround", 
          date = "2025-08-23",
          description = "Add/delete/change surrounding delimiter pairs",
          keymaps = {
            "gz{motion}{char} = Add surrounding",
            "gzd{char} = Delete surrounding", 
            "gzc{old}{new} = Change surrounding",
            "gz in visual = Surround selection"
          },
          usage = "Use gz to add surroundings, gzd to delete, gzc to change"
        }
      }

      local lines = {"🔌 Recently Added Plugins", ""}
      
      for _, plugin in ipairs(recent_plugins) do
        table.insert(lines, "📦 " .. plugin.name .. " (" .. plugin.date .. ")")
        table.insert(lines, "   " .. plugin.description)
        table.insert(lines, "")
        table.insert(lines, "   ⌨️  Keymaps:")
        for _, keymap in ipairs(plugin.keymaps) do
          table.insert(lines, "      • " .. keymap)
        end
        table.insert(lines, "")
        table.insert(lines, "   💡 " .. plugin.usage)
        table.insert(lines, string.rep("─", 60))
        table.insert(lines, "")
      end
      
      -- Create a scratch buffer to display the info
      local buf = vim.api.nvim_create_buf(false, true)
      vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
      vim.api.nvim_buf_set_option(buf, 'modifiable', false)
      vim.api.nvim_buf_set_option(buf, 'filetype', 'markdown')
      
      -- Open in a new window
      vim.cmd('vsplit')
      vim.api.nvim_win_set_buf(0, buf)
      vim.api.nvim_buf_set_name(buf, "Recent Plugins")
    end, {
      desc = "Show recently added plugins and their usage"
    })
  '';
}
