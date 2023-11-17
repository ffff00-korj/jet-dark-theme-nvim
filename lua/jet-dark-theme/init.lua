local M = {}

M.config = {
    overrides = {},
}

function M.setup(config)
    M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

function M.load()
    if vim.version().minor < 8 then
        vim.notify_once("jet-dark-theme.nvim: you must use neovim 0.8 or higher")
        return
    end

    -- reset colors
    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end

    vim.g.colors_name = "jet-dark"
    vim.o.termguicolors = true

    local groups = require("jet-dark-theme.groups").setup()

    -- add highlights
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
