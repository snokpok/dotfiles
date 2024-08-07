return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',  opts = {} },
  -- {
  --   -- Add indentation guides even on blank lines
  --   'lukas-reineke/indent-blankline.nvim',
  --   -- Enable `lukas-reineke/indent-blankline.nvim`
  --   -- See `:help ibl`
  --   main = 'ibl',
  --   opts = {},
  -- },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        disable_netrw = true,
        hijack_netrw = true,
        hijack_unnamed_buffer_when_opening = true,
        update_focused_file = {
          enable = true,
          update_root = false,
          ignore_list = {},
        },
        view = {
          centralize_selection = true,
          side = 'right',
          width = 80
          -- float = {
          --   enable = true,
          --   open_win_config = {
          --     relative = 'editor',
          --     width = width,
          --     height = height,
          --     row = (gheight - height) * 0.4,
          --     col = (gwidth - width) * 0.5,
          --   },
          -- },
        },
      }

      vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
      vim.keymap.set('n', '<leader>n', ':NvimTreeFindFile<CR>', { silent = true })
    end,
  },
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      local header_art = [[
     ╭╮╭┬─╮╭─╮┬  ┬┬╭┬╮
     │││├┤ │ │╰┐┌╯││││
     ╯╰╯╰─╯╰─╯ ╰╯ ┴┴ ┴
        ]]

      local starter = require 'mini.starter'
      starter.setup {
        -- evaluate_single = true,
        items = {
          starter.sections.telescope(),
          starter.sections.builtin_actions(),
          starter.sections.recent_files(10, true),
          starter.sections.recent_files(10, false),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet '» ',
          starter.gen_hook.aligning('center', 'center'),
        },
        header = header_art,
        footer = '',
      }
    end,
  },
  {
    'nvim-pack/nvim-spectre',
  },
  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Downloads" },
        auto_session_use_git_branch = true
      }
    end
  },
  -- {
  --   "supermaven-inc/supermaven-nvim",
  --   config = function()
  --     require("supermaven-nvim").setup({})
  --   end,
  -- },
  {
    "tpope/vim-dadbod",
  },
  { "kristijanhusak/vim-dadbod-completion" },
  { "kristijanhusak/vim-dadbod-ui" },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    'rhysd/conflict-marker.vim'
  },
  {
    'levouh/tint.nvim',
    config = function()
      require('tint').setup({
        tint = -60
      })
    end
  },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  }
}
