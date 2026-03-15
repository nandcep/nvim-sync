require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "ansiblels", "ts_ls", "helm-ls", "yamlls", "jdtls" }
-- vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

local lombok_path = vim.fn.expand("~/.local/share/nvim/lombok/lombok.jar")
local nvlsp = require "nvchad.configs.lspconfig"
vim.lsp.config("jdtls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = {
    "jdtls",
    "--jvm-arg=-javaagent:" .. lombok_path,
  },
})

vim.lsp.config("yamlls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    yaml = {
      schemaStore = {
        enable = true,
      },
      -- THIS IS THE FIX:
      customTags = {
        "!reference",
        "!reference sequence",
        "!reference mapping",
      },
    },
  },
})

vim.lsp.enable(servers)
