return {
    {
        "Olical/conjure",
        ft = { "clojure" },
        config = function()
            vim.keymap.set("n", "<leader>ee", ":ConjureEval<CR>", { noremap = true, silent = true })
        end,
    },
    -- Paredit for structured editing
    {
        "guns/vim-sexp",
        ft = { "clojure" },
    },
    {
        "tpope/vim-sexp-mappings-for-regular-people",
        dependencies = { "guns/vim-sexp" },
    },
    {
        "gpanders/nvim-parinfer",
    },
    -- LSP Installer for easier setup
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
}
