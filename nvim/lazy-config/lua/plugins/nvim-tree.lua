return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({})
        vim.keymap.set("n", "<C-t>", ":NvimTreeOpen<CR>", { noremap = true, silent = true, desc = "Open NvimTree"})
    end,
}