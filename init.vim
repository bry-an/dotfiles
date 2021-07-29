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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
Plug 'stsewd/fzf-checkout.vim'
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
call plug#end()
colorscheme gruvbox

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_javascript_eslint_exec = './eslint-script.sh'
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
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
let g:ack_autoclose = 1

lua << EOF
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
EOF

nnoremap <leader>s :<C-u>call gitblame#echo()<CR>
nnoremap <leader>v :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>f :Files<CR>
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
