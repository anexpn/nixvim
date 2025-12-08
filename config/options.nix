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
          name = "nvim-window",
          date = "2025-12-09",
          description = "Quick window navigation using letter hints to jump between windows",
          keymaps = {
            "<leader>wj = Pick Window with Hints"
          },
          usage = "Press <leader>wj to show letter hints on all windows, then press the letter to jump to that window. Supports up to 52 windows per tab page"
        },
        {
          name = "focus.nvim",
          date = "2025-12-09",
          description = "Auto-resizing split window manager with golden ratio calculations",
          keymaps = {
            "<leader>uf = Toggle Focus Auto-resize",
            "<leader>we = Equalise Window Sizes",
            "<leader>wm = Maximise Current Window"
          },
          usage = "Automatically resizes splits using golden ratio. Toggle with <leader>uf. Features cursorline and signcolumn on focused window only"
        },
        {
          name = "jsonls (JSON LSP)",
          date = "2025-09-01",
          description = "JSON Language Server for syntax validation, formatting, and schema support",
          keymaps = {
            "Uses standard LSP keymaps from <leader>c group"
          },
          usage = "Provides JSON validation, formatting, hover information, and JSON schema support for .json files"
        },
        {
          name = "project.nvim",
          date = "2025-08-31",
          description = "Project management with automatic root detection and session management",
          keymaps = {
            "<leader>fp = Find Projects"
          },
          usage = "Automatically detects project root and manages project sessions. Integrates with Telescope for project switching"
        },
        {
          name = "claudecode.nvim",
          date = "2025-08-31",
          description = "Claude Code integration with native Neovim diff support",
          keymaps = {
            "<leader>ao = Toggle Claude Code",
            "<leader>af = Focus Claude Code",
            "<leader>as = Send selection to Claude (visual)",
            "<leader>ab = Add current buffer",
            "<leader>aa = Accept Claude diff",
            "<leader>ad = Deny Claude diff"
          },
          usage = "Pure Lua implementation of Claude Code with WebSocket protocol. Requires Claude Code CLI installed"
        },
        {
          name = "codecompanion.nvim",
          date = "2025-08-31",
          description = "AI coding assistant with chat and inline code generation",
          keymaps = {
            "<leader>ac = CodeCompanion Chat",
            "<leader>ax = CodeCompanion Actions",
            "<leader>ai = CodeCompanion Inline"
          },
          usage = "AI assistant for code generation, chat, and inline editing. Use :CodeCompanion <prompt> for inline assistance or chat interface"
        },
        {
          name = "diffview.nvim",
          date = "2025-08-27",
          description = "Single tabpage interface for cycling through diffs and file history",
          keymaps = {
            "<leader>gv = Open Diffview",
            "<leader>gh = File History",
            "<leader>gq = Close Diffview"
          },
          usage = "Specialized diff viewer with merge conflict resolution, PR review, and commit history navigation. Integrates with neogit for enhanced Git workflow"
        },
        {
          name = "neogit",
          date = "2025-08-26",
          description = "Magit-inspired Git interface for Neovim",
          keymaps = {
            "<leader>gn = Open Neogit"
          },
          usage = "Powerful Git interface with status, staging, committing, and branching. Alternative to lazygit with more Emacs Magit-like workflow"
        },
        {
          name = "yazi.nvim",
          date = "2025-08-26",
          description = "Terminal file manager with image preview and modern UI",
          keymaps = {
            "<leader>- = Open yazi file manager"
          },
          usage = "Fast, intuitive file management with image previews. Use to select directories and open grep. Requires yazi installed on system"
        },
        {
          name = "neo-tree.nvim",
          date = "2025-08-26",
          description = "Traditional file tree explorer with Git integration and LSP diagnostics",
          keymaps = {
            "<leader>ft = Toggle Neo-tree",
            "<leader>fo = Focus Neo-tree"
          },
          usage = "Sidebar file tree to complement Oil buffer-based explorer. Use <leader>ft to toggle visibility"
        },
        {
          name = "zen-mode.nvim",
          date = "2025-08-24", 
          description = "Distraction-free coding with full-screen floating windows and backdrop shading",
          keymaps = {
            "<leader>uz = Toggle zen mode",
            ":ZenMode = Toggle zen mode command"
          },
          usage = "Enter focused coding mode with clean UI, hidden distractions, and centered content window"
        },
        {
          name = "smart-splits.nvim",
          date = "2025-08-24",
          description = "Smart, seamless navigation and resizing of Neovim + tmux splits",
          keymaps = {
            "<C-h/j/k/l> = Navigate splits (works with tmux)",
            "<A-h/j/k/l> = Resize splits",
            "<leader><leader>h/j/k/l = Swap buffers between splits"
          },
          usage = "Seamless navigation between Neovim and tmux panes. Configure tmux with provided config for full integration"
        },
        {
          name = "snacks.nvim",
          date = "2025-08-24",
          description = "Utility plugins for big files, notifications, status column, and word highlighting",
          keymaps = {
            ":checkhealth snacks = Check snacks health",
            "Automatic features: big file handling, enhanced notifications, status column improvements",
            "Word highlighting under cursor with 100ms debounce",
            "Quick file operations for better performance"
          },
          usage = "Provides utility enhancements alongside existing alpha dashboard. Improves file handling and UI feedback"
        },
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

    -- Load local experimental config overlay
    -- This allows experimenting with plugins/config without rebuilding nixvim
    local local_nvim = vim.fn.expand('~/.config/nvim-local')

    if vim.fn.isdirectory(local_nvim) == 1 then
      -- Add to runtimepath so plugins/lua modules are found
      vim.opt.runtimepath:append(local_nvim)

      -- Source init.lua if it exists
      local init_file = local_nvim .. '/init.lua'
      if vim.fn.filereadable(init_file) == 1 then
        dofile(init_file)
      end
    end
  '';
}
