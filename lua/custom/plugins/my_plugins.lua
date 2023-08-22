return {
    "ziglang/zig.vim",
    "cocopon/iceberg.vim",
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
        start_in_insert = true,
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
        'mfussenegger/nvim-dap',
    },
    {
        'mfussenegger/nvim-dap-python',
    },
}
