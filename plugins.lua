local plugins = {
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
        "prettier",
        "typescript-language-server",
        "js-debug-adapter",
        "lua-language-server",
        "pyright",
        "python-lsp-server",
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
                "dockerfile-language-server"
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
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
}
return plugins
