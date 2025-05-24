return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local omnisharp_path = vim.fn.stdpath("data") .. "/mason/packages/omnisharp/OmniSharp"
      opts.servers = opts.servers or {}
      opts.servers.omnisharp = {
        cmd = { omnisharp_path },
        enable_import_completion = true,
        organize_imports_on_format = true,
      }
    end,
  },
}
