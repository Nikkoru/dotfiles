return {
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "jay-babu/mason-nvim-dap.nvim", -- Manages debug adapters
        "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
        local dap = require("dap")
        dap.adapters.codelldb = {
            type = "executable",
            command = "codelldb"
        }

        dap.configurations.cpp = {
            {
                name = "Launch",
                type = "codelldb",
                request = "launch",
                cwd = "${workspaceFolder}",
                stopOnEntry = false,
            }
        }

        -- keybinds
        local keymap = vim.keymap

        keymap.set("n", "<leader>br", "<cmd>DapToggleBreakpoint<CR>")
        keymap.set("n", "<F10>", "<cmd>DapStepOver<CR>")
        keymap.set("n", "<F5>", "<cmd>DapContinue<CR>")
        keymap.set("n", "<F11>", "<cmd>DapStepInto<CR>")
        keymap.set("n", "<F5>", "<cmd>DapContinue<CR>")
    end,
}
