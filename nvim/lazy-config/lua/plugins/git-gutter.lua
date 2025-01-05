return {
    "airblade/vim-gitgutter",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        vim.g.gitgutter_sign_added = "➕"
        vim.g.gitgutter_sign_modified = "✏️"
        vim.g.gitgutter_sign_removed = "➖"

        -- Example: Set up keybindings
        vim.keymap.set("n", "ghp", ":GitGutterPreviewHunk<CR>", { noremap = true, silent = true, desc = "Preview Git hunk" })
        vim.keymap.set("n", "ghs", ":GitGutterStageHunk<CR>", { noremap = true, silent = true, desc = "Stage Git hunk" })
        vim.keymap.set("n", "ghu", ":GitGutterUndoHunk<CR>", { noremap = true, silent = true, desc = "Undo Git hunk" })
    end,
}
