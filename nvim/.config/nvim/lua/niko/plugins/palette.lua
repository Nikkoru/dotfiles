return {
    "roobert/palette.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
        require("palette").setup({
            palettes = {
                main = "custom_main_palette",
                accent = "custom_accent_palette",
                state = "custom_state_palette",
            },
            custom_highlight_group = "custom",
            custom_highlight_groups = {
                custom = {
                    {
                        "Comment",
                        "#2f2f2f",
                        nil,
                        { "italic" },
                    },
                    {
                        "Visual",
                        "#272727",
                        "#a2a2a2",
                        nil
                    },
                    {
                        "Boolean",
                        "#001ba4",
                        nil,
                        nil,
                    },
                    {
                        "Type",
                        "#8237fb",
                        nil,
                        nil,
                    },
                    {
                        "Normal",
                        "#cfcfcf",
                        nil,
                        nil,
                    },
                    {
                        "Delimiter",
                        "#575757",
                        nil,
                        { "bold" },
                    },
                    {
                        "Keyword",
                        "#005dc5",
                        nil,
                        nil,
                    },
                    {
                        "Include",
                        "#2f2f2f",
                        nil,
                        nil,
                    },
                    {
                        "@variable",
                        "#01b67a",
                        nil,
                        { "italic" },
                    },
                    {
                        "Identifier",
                        "#a2a2a2",
                        nil,
                        nil,
                    },
                    {
                        "Define",
                        "#2f2f2f",
                        nil,
                        nil,
                    },
                    {
                        "Macro",
                        "#ff00de",
                        nil,
                        nil,
                    },
                    {
                        "Function",
                        "#b200dd",
                        nil,
                        nil,
                    },
                    {
                        "NameS"
                    },
                    {
                        "PreProc",
                        "#2f2f2f",
                        nil,
                        nil,
                    },
                    {
                        "Operator",
                        "#6e6e6e",
                        nil,
                        { "italic" },
                    },
                    {
                        "String",
                        "#cfcfcf",
                        nil,
                        nil,
                    },
                    {
                        "Conditional",
                        nil,
                        nil,
                        { "italic" },
                    },
                    {
                        "Constant",
                        "#dce200",
                        nil,
                        { "bold" },
                    },
                    {
                        "LineNr",
                        "#4a4a4a",
                        nil,
                        nil,
                    },
                    {
                        "CursorLineNr",
                        "#cfcfcf",
                        nil,
                        { "bold" },
                    },
                    {
                        "Special",
                        "#aa0048",
                        nil,
                        nil,
                    },
                    -- C/C++ specifics
                    {
                        "cIncluded",
                        "#4f4f4f",
                        nil,
                        { "bold" },
                    },
                    {
                        "@keyword.return.cpp",
                        "#dce200",
                        nil,
                        { "italic" },
                    },
                    {
                        "@keyword.repeat.cpp",
                        "#dce200",
                        nil,
                        { "italic" },
                    },
                    {
                        "@keyword.conditional.cpp",
                        "#dce200",
                        nil,
                        { "italic" },
                    },
                    {
                        "@lsp.typemod.namespace.globalScope.cpp",
                        "#cfcfcf",
                        nil,
                        nil,
                    },
                    {
                        "@lsp.typemod.operator.declaration.cpp",
                        "#617600",
                        nil,
                        { "italic" },
                    },
                    {
                        "@lsp.typemod.method.classScope.cpp",
                        "#6d1883",
                        nil,
                        nil,
                    },
                    {
                        "@lsp.typemod.function.static.cpp",
                        nil,
                        nil,
                        { "underline" },
                    },
                    {
                        "@lsp.typemod.enumMember.globalScope.cpp",
                        "#28c91b",
                        nil,
                        nil,
                    },
                },
            },
            custom_palettes = {
                main = {
                    custom_main_palette = {
                        color0 = "#000000",
                        color1 = "#1a1a1a",
                        color2 = "#110333",
                        color3 = "#2672ff",
                        color4 = "#340a99",
                        color5 = "#a7a9b7",
                        color6 = "#3c0bb3",
                        color7 = "#4d0ee6",
                        color8 = "#5610ff",
                    },
                },
                accent = {
                    custom_accent_palette = {
                        accent0 = "#D97C8F",
                        accent1 = "#D9AE7E",
                        accent2 = "#D9D87E",
                        accent3 = "#A5D9A7",
                        accent4 = "#8BB9C8",
                        accent5 = "#C9A1D3",
                        accent6 = "#B8A1D9",
                    },
                },
                state = {
                    custom_state_palette = {
                        error = "#D97C8F",
                        warning = "#D9AE7E",
                        hint = "#D9D87E",
                        ok = "#A5D9A7",
                        info = "#8BB9C8",
                    },
                },
            },
        })

        vim.cmd([[colorscheme palette]])
    end,
}
