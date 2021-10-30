syntax on

call plug#begin('~/.vim/plugged')
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Themes
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" lint / highlighting
Plug 'eslint/eslint'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" svelte
Plug 'evanleck/vim-svelte'

" html
Plug 'mattn/emmet-vim'
"" tags
Plug 'jiangmiao/auto-pairs'
Plug 'leafOfTree/vim-matchtag'
Plug 'tpope/vim-surround'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Clojure
Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" parinfer - recompile on update
" Plug 'eraserhd/parinfer-rust', {'do':
        \  'cargo build --release'}
Plug 'tpope/vim-fireplace'
Plug 'Olical/conjure', {'tag': 'v4.25.0'}

" allow other plugins to tap into . repeat
Plug 'tpope/vim-repeat'

" icons
Plug 'kyazdani42/nvim-web-devicons'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " update the parsers on update
Plug 'nvim-treesitter/playground'

Plug 'tpope/vim-commentary'

call plug#end()
colorscheme gruvbox

let mapleader = " "

let g:airline_theme='dark'
let g:NERDTreeHijackNetrw=0
" do not format on autosave cljfmt
let g:clj_fmt_autosave = 0


lua require('bryan')

nnoremap <leader>v :Vex<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap jl <Esc>
nnoremap <leader>gc :GCheckout<CR> 
nnoremap <Tab><Tab> <C-^>
noremap <Leader>y "*y<ESC>
noremap <Leader>p "*p<ESC>

" to go first non-blank character in line
nnoremap - ^
nnoremap <S--> ^i
" insert a new line beneath cursor without leaving normal mode
nnoremap <Leader>oo o<ESC>k
