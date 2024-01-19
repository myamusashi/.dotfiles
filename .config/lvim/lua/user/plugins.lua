lvim.plugins = {
  {
    "sainnhe/sonokai"
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end

  },
  {
    "morhetz/gruvbox"
  },
  {
    "cpea2506/one_monokai.nvim"
  },
  {
    "ray-x/aurora"
  },
  {
    "stevearc/dressing.nvim"
  },
  {
    "rose-pine/neovim",
    name = 'rose-pine'
  },
  {
    "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true
      })
    end,
  },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },
  {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
      vim.cmd([[colorscheme visual_studio_code]])
    end,
  },
  {
    "aurum77/live-server.nvim",
    config = function()
      require("live_server.util").install()
    end,
  },
  {
    "catppuccin/nvim",
    ame = "catppuccin",
    priority = 1000
  },
  {
    "edluffy/hologram.nvim"
  },
  {
    "mg979/vim-visual-multi"
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require 'colorizer'.setup()
    end
  },
  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  {
    "ryanoasis/vim-devicons"
  },
  {
    "kevinhwang91/nvim-ufo"
  },
  {
    "rmagatti/goto-preview",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "karb94/neoscroll.nvim"
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  },
  {
    "edluffy/specs.nvim"
  },
  {
    "archibate/lualine-time"
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension "file_browser"
    end
  },
  {
    "leon-richardt/comment-highlights.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
    cmd = "CHToggle",
    keys = {
      {
        "<leader>h",
        function() require("comment-highlights").toggle() end,
        desc = "Toggle comment highlighting"
      },
    },
  },
  {
    "Philipp-M/tree-sitter-yuck"
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "rcarriga/nvim-notify"
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.prettier)
      table.insert(opts.sources, nls.builtins.formatting.beautysh)
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "MunifTanjim/nui.nvim"
  },
}
