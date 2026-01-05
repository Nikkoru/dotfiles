return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities
    })

    vim.lsp.config('clangd', {
        on_new_config = function(new_config, new_cwd)
            local status, cmake = pcall(require, "cmake-tools")
            if status then
                print("new config")
                cmake.clangd_on_new_config(new_config)
            end
        end,
    })

    vim.diagnostic.config({
        virtual_text = true
    })

  end,
}
