return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },

            ensure_installed = {
                "json",
                "javascript",
                "typescript",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "gitignore",
                "c",
                "cpp"
            },
            incremental_selection = {
                enable = true,
            },
        })
        vim.treesitter.language.register("bash", "zsh")
    end,
}
