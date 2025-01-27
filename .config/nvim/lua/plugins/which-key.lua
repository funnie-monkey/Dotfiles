return {
    " folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 100
    end,
    config = function()
        require("which-key").add({
            { "<leader>b",  group = "Background Keymaps" },
            { "<leader>f",  group = "Telescope Find Files" },
            { "<leader>g",  group = "Git mappings" },
            { "<leader>m",  group = "Mason and check mappings" },
            { "<leader>mc", group = "Check Mappings" },
            { "<leader>p",  group = "To directory and Lazy keymaps" },
            { "<leader>pm", group = "+Lazy keymaps" },
            { "<leader>t",  group = "Telescope keymaps" },
            { "<leader>v",  group = "LSP Keymaps" },
        })
    end,
}
