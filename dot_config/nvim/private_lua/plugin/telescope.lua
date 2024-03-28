local mapvimkey = require("util.keymapper").mapvimkey

local config = function()
	local telescope = require("telescope")
    local wk = require('which-key')
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})

    wk.register({
        ["<leader>f"] = {name ="+file"},
    })
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapvimkey("<leader>fk", "Telescope keymaps", "n", {desc = "Show [K]eymaps"}),
		mapvimkey("<leader>fh", "Telescope help_tags", "n", {desc = "Show [H]elp Tags"}),
		mapvimkey("<leader>ff", "Telescope find_files", "n", {desc = "[F]ind Files"}),
		mapvimkey("<leader>fg", "Telescope live_grep", "n",  {desc = "Live [G]rep"}),
		mapvimkey("<leader>fb", "Telescope buffers", "n", {desc = "Find [B]uffers"}),
	},
}
