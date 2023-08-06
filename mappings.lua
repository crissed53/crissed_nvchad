local M = {}

M.abc = {
  n = {
    ["<leader>tr"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency"
    },
    ["<C-n>"] = {"<cmd> Neotree <CR>", "Toggle Neotree"}
  }
}

return M
