local M = {
  "Exafunction/windsurf.vim",
  event = "BufEnter",
}

function M.config()
  vim.api.nvim_call_function("codeium#GetStatusString", {})
end

return M
