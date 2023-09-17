---@type ChadrcConfig
local M = {}


M.ui = {
  theme = 'nord' ,
  transparency =  true,
  tabufline = {
    enabled = false
  },
  statusline = {
    theme = "minimal"
  }
}
M.plugins = "custom.plugins"
return M
