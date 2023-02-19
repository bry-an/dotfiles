vim.g.ale_linter_aliases = {svelte= {'css', 'javascript', 'html'}, vue= {'css', 'javascript'}}
vim.g.ale_linters = {svelte= {'eslint'}, vue= {'eslint'}}
vim.g.ale_fixers = {svelte= {'eslint'}, javascript= {'eslint'}, vue= {'eslint'}}
vim.g.ale_fix_on_save = 1
vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '⚠'
vim.g.ale_lint_on_enter = 0
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_linters_explicit = 1
vim.g.svelte_indent_script = 0
vim.g.svelte_indent_styl = 0

