return {
    "Civitasv/cmake-tools.nvim",
    opts = {},
    config = function()
        require("cmake-tools").setup {
            cmake_compile_commands_options = {
                action = "soft_link"
            }
        }
    end,
}
