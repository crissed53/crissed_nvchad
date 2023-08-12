local M = {}

M.abc = {
  n = {
    ["<leader>tr"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency"
    },
    ["<C-n>"] = {"<cmd> Neotree toggle <CR>", "Toggle Neotree"},
    ["|"] = {"<cmd> vsplit <CR>", "split vertical"},
    ["\\"] = {"<cmd> split <CR>", "split horizontal"},
    ['<leader>rr'] = {"<cmd> RunCode<CR>"}
  }
}

return M
