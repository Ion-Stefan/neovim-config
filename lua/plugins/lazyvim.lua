return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            autofromat = false,
        },
        {
            "github/copilot.vim",
            config = function()
                vim.g.copilot_no_tab_map = true
                vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
                vim.api.nvim_create_autocmd({ "BufEnter", "TabEnter" }, {
                    callback = function()
                        vim.cmd("Copilot enable")
                    end,
                })
                vim.g.copilot_log_level = "debug"
                vim.g.copilot_log_file = "/path/to/copilot.log" -- Change this to a valid path
            end,
        },
    },
}
