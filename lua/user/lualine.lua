local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

local function windsurf()
  return vim.api.nvim_call_function("codeium#GetStatusString", {})
end

function M.config()
  require("lualine").setup {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { "buffers" },
      lualine_b = { "branch" },
      lualine_c = { "diagnostics" },
      lualine_x = { windsurf, "copilot" },
      lualine_y = { "lsp_status", "filetype"  },
      lualine_z = { "progress",  "location" },
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
