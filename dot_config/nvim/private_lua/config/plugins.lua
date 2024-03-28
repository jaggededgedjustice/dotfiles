require("lazy").setup({
    -- colours
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'moonfly'
        end
    },
    -- LSP

    -- general
    { "folke/neoconf.nvim", cmd = "Neoconf" }
})
