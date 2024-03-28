local conf = function()
    local wk = require('which-key')
    wk.register()
end

return {
	"folke/which-key.nvim",
	lazy = false,
    init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
	opts = {},
    config = conf
}
