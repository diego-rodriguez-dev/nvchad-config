---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "minimal",
  },
}
M.plugins = "custom.plugins"

M.general = {
  n = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}
M.lazy_nvim = {
  performance = {
    rtp = {
      -- Comment plugins that you want to leave enabled:
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        -- "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        -- "tar",
        -- "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        -- "zip",
        -- "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
        "editorconfig",
      },
    },
  },
}
return M
