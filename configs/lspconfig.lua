local config = require "plugins.configs.lspconfig"

local on_attach = config.on_attach
local capabilities = config.capabilities
local util = require "lspconfig.util"
local lspconfig = require "lspconfig"

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly", -- openFilesOnly, workspace
        typeCheckingMode = "strict", -- off, basic, strict
        useLibraryCodeForTypes = true,
        extraPaths = { "/home/qxz0myb/work/d3apps/cloud-svcs/idun/" },
      },
    },
  },
}
-- require("lspconfig").jedi_language_server.setup {}
local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_but_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

local default_node_modules = vim.fn.getcwd() .. "/node_modules"

local ngls_cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  default_node_modules,
  "--ngProbeLocations",
  default_node_modules,
  "--experimental-ivy",
}

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = false,
    },
  },
  command = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports",
    },
  },
  -- root_dir = util.root_pattern("package.json", "tsconfig.json", "tsconfig.base.json", "jsconfig.json", ".git"),
}

lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- lspconfig.angularls.setup {
--   -- cmd = ngls_cmd,
--   -- on_new_config = function(new_config)
--   --   new_config.cmd = ngls_cmd
--   -- end,
--   on_attach = on_attach,
--   capabilities = capabilities,
--   root_dir = util.root_pattern("angular.json", "package.json"),
-- }

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

--Enable (broadcasting) snippet capability for completion

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.docker_compose_language_service.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
