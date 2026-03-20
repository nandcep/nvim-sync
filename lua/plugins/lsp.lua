return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
                library = {
                  vim.env.VIMRUNTIME,
                },
              },
            },
          },
        },
        gopls = {
          mason = false,
        },
        yamlls = {
          settings = {
            yaml = {
              customTags = {
                "!reference",
                "!reference sequence",
                "!reference mapping",
              },
            },
          },
        },
        jdtls = {
          cmd = {
            "jdtls",
            "--jvm-arg=-javaagent:" .. vim.fn.expand("~/.local/share/nvim/lombok/lombok.jar"),
          },
        },
      },
    },
  },
}
