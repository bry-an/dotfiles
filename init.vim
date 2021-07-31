" show existing tab with 4 spaces width
set tabstop=4 softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set autoindent
set smartindent
set scrolloff=8
set number
set updatetime=100
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set smartcase
set ignorecase
set signcolumn=yes
set backspace=indent,eol,start
set nowrap
set nohlsearch
set formatoptions-=ro
syntax on

call plug#begin('~/.vim/plugged')
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'eslint/eslint'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'leafOfTree/vim-matchtag'
Plug 'ap/vim-css-color'
Plug 'evanleck/vim-svelte'
Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'eraserhd/parinfer-rust'
Plug 'tpope/vim-fireplace'
" allow other plugins to tap into . repeat
Plug 'tpope/vim-repeat'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " update the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'tpope/vim-commentary'
call plug#end()
colorscheme gruvbox

" syntax highlighting
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_javascript_eslint_exec = './eslint-script.sh'
" linter config
let g:ale_linter_aliases = {'svelte': ['css', 'javascript', 'html'], 'vue': ['css', 'javascript']}
let g:ale_linters = {'svelte': ['eslint'], 'vue': ['eslint']}
let g:ale_fixers = {'svelte': ['eslint'], 'javascript': ['eslint'], 'vue': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0

let mapleader = " "

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:airline_theme='dark'
let g:NERDTreeHijackNetrw=0
" let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
let g:ack_autoclose = 1
" exclude filenames from search
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    },
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    }
}
require('telescope').load_extension('fzy_native')

require'lspconfig'.tsserver.setup{}
require'lspconfig'.svelte.setup { settings = { format = false } }
require'lspconfig'.clojure_lsp.setup{}
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
  };
}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}
EOF

fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()
nnoremap <leader>v :Vex<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg<CR> 
inoremap jl <Esc>
nnoremap <leader>gc :GCheckout<CR> 
nnoremap <Tab><Tab> <C-^>
noremap <Leader>y "*y
noremap <Leader>p "*p
nnoremap <Leader>d :lua vim.lsp.buf.definition()<CR>
nnoremap <Leader>h :lua vim.lsp.buf.hover()<CR>
" insert a new line beneath cursor without leaving normal mode
nnoremap <Leader>oo o<ESC>k
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-f> :lua require('telescope.builtin').live_grep()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>gb :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_commits()<CR>
