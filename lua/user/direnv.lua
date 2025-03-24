local M = {
  "NotAShelf/direnv.nvim",
}

function M.config()
  -- require("direnv").setup {keybindings = {allow = "<leader>Da", deny="<leader>Dd", reload="<leader>Dr"}}
  require("direnv").setup {keybindings = nil}
end

return M
