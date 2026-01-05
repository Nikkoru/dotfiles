return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "html",
                "cssls",
                "lua_ls",
                "clangd",
                "cmake",
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "",
                            package_pending = "",
                            package_uninstalled = "",
                        },
                    },
                },
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "prettier",
                "stylua",
                "clang-format",
                "cmakelang",
                "cpplint",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
