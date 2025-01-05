" linter config
let g:ale_linter_aliases = {'svelte': ['css', 'javascript', 'html'], 'vue': ['css', 'javascript']}
let g:ale_linters = {'svelte': ['eslint'], 'vue': ['eslint']}
let g:ale_fixers = {'svelte': ['eslint'], 'javascript': ['eslint'], 'vue': ['eslint']}
let g:ale_fix_on_save = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
