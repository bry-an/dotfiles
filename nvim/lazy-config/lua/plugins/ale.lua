return {
    "dense-analysis/ale",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- Set up ALE options
        vim.g.ale_fix_on_save = 1 -- Automatically fix files on save
        vim.g.ale_linters_explicit = 1 -- Only use explicitly set linters
        vim.g.ale_sign_error = "✗" -- Customize error sign
        vim.g.ale_sign_warning = "!" -- Customize warning sign
        vim.g.ale_fixers = {
            javascript = { "eslint" },
            python = { "black", "isort" },
            -- Add other filetypes and fixers as needed
        }
        vim.g.ale_linters = {
            javascript = { "eslint" },
            python = { "flake8" },
            -- Add other filetypes and linters as needed
        }
    end,
}

