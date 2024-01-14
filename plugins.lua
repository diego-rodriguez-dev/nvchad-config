local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "html",
        "python",
      }
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "typescript",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    event = "VeryLazy",
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.configs.harpoon"
    end,
  },
  {
    event = "VeryLazy",
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.configs.lazygit"
    end,
  },
  {
    event = "VeryLazy",
    "Equilibris/nx.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("nx").setup {}
    end,
  },
  {
    event = "VeryLazy",
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
      require "custom.configs.trouble"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "typescript-language-server",
        "js-debug-adapter",
        "lua-language-server",
        "pyright",
        "isort",
        "css-lsp",
        "json-lsp",
        "html-lsp",
        "marksman",
        "black",
        "mypy",
        "ruff",
        "angular-language-server",
        "terraform-ls",
        "stylua",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "bash-language-server",
        "markdownlint",
        "actionlint",
        "hadolint",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function()
      require "custom.configs.lint"
    end,
  },
}
return plugins
