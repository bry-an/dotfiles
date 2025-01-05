return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile"},
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "clojure", "javascript", "lua", "svelte" },
            highlight = { enable = true },
        })
    end,
}
