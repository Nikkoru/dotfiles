return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
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
    },
    config = function()
        vim.treesitter.language.register("bash", "zsh")
    end,
}
