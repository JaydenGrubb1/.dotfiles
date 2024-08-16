return {
    "nvim-lualine/lualine.nvim",
    config = function()
        -- remove "fileformat" from default config
        local default_config = require("lualine").get_config()
        default_config.sections.lualine_x = { "encoding", "filetype" }

        require("lualine").setup({
            options = {
                theme = "catppuccin",
            },
            sections = default_config.sections,
        })
    end,
}
