local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics
  local completion = null_ls.builtins.completion

  null_ls.setup {
    debug = false,
    sources = {
      completion.spell,
      formatting.stylua,
      formatting.prettier,
      formatting.csharpier,
      -- formatting.eslint,
      -- Python --
      formatting.black,
      formatting.isort,
      -- formatting.pyflyby,
      -- diagnostics.vulture,
      -- formatting.reorder_python_imports,
      -- formatting.usort,
    },
  }
end

return M
