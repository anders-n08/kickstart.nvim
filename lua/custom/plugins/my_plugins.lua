return {
  "ziglang/zig.vim",
  {
    "cocopon/iceberg.vim",
    priority = 1001,
    config = function()
      vim.cmd.colorscheme 'iceberg'
    end,
  },
  "christoomey/vim-tmux-navigator",
  "nvim-tree/nvim-web-devicons",
  "romgrk/barbar.nvim",
  "godlygeek/tabular",
  "glepnir/lspsaga.nvim",
  "akinsho/toggleterm.nvim",
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
    opts = {
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
      persist_mode=true,
    }
  },
  "SmiteshP/nvim-navic",
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ignore_install = { 'help' }

      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, {
          'dockerfile',
          'git_config',
          'jsdoc',
          'make',
          'toml',
          'vimdoc',
        })
      end
    end,
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  },
  {
    'folke/trouble.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    }
  },
  {
    'microsoft/debugpy'
  },
  {
    'mfussenegger/nvim-dap',
  },
  {
    'mfussenegger/nvim-dap-python',
  },
  {
    'rcarriga/nvim-dap-ui',
  },
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        '<leader>ff',
        function()
          require('conform').format({ async = true, lsp_fallback = true })
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    -- Everything in opts will be passed to setup()
    opts = {
      -- Define your formatters
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'blue' },
        javascript = { { 'prettierd', 'prettier' } },
        c = { 'clang_format' },
        html = { 'html_beautifier' },
      },
      -- Set up format-on-save
      format_on_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        -- if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        -- end
        -- return { timeout_ms = 500, lsp_fallback = true }
      end,

      -- format_on_save = {},
      -- Customize formatters
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2' },
        },
      },
    },
    init = function()
      -- If you want the formatexpr, here is the place to set it
      -- vim.o.formatexpr = 'v:lua.require'conform'.formatexpr()'
    end,
  },
}
