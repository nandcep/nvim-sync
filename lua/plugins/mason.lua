return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- Remove stylua from the auto-install list
      opts.ensure_installed = vim.tbl_filter(function(p)
        return p ~= "stylua"
      end, opts.ensure_installed)
    end,
  },
}
