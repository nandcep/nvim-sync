return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rcasia/neotest-java",
    "fredrikaverpil/neotest-golang",
  },
  keys = {
    {
      "<leader>ts",
      function()
        require("neotest").summary.toggle()
      end,
      desc = "Toggle Test Summary",
    },
    {
      "<leader>tr",
      function()
        require("neotest").run.run()
      end,
      desc = "Run Nearest Test",
    },
    {
      "<leader>tf",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run Test File",
    },
    {
      "<leader>tp",
      function()
        require("neotest").run.run(vim.fn.fnamemodify(vim.fn.expand("%"), ":h"))
      end,
      desc = "Run Test Package",
    },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-java"),
        require("neotest-golang")({
          go_test_args = { "-v", "-count=1" },
          root_files = { "go.mod", ".git" },
        }),
      },
      summary = {
        open = "botright split | resize 10",
      },
    })
  end,
}
