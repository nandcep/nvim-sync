return {
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    ft = { "java", "go", "typescript", "javascript" },
    opts = {
      server = {
        cmd = {
          "sonarlint-ls",
          "-stdio",
          "-analyzers",
          vim.fn.expand("$MASON/share/sonarlint-ls/analyzers/javascript.jar"),
        },
      },
      filetypes = {
        "java",
        "go",
        "typescript",
        "javascript",
      },
    },
  },
}
