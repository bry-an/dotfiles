local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'preservim/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'jacoborus/tender.vim'

Plug 'hrsh7th/nvim-compe'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


Plug 'eslint/eslint'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug('prettier/vim-prettier', {['for']= {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html', 'vue'} } )

Plug 'evanleck/vim-svelte'

Plug 'jiangmiao/auto-pairs'
Plug 'leafOfTree/vim-matchtag'
Plug 'tpope/vim-surround'

Plug 'neovim/nvim-lspconfig'

Plug 'venantius/vim-cljfmt'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'eraserhd/parinfer-rust'
Plug 'tpope/vim-fireplace'


Plug 'vuejs/eslint-plugin-vue'

Plug 'tpope/vim-repeat'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'iamcco/markdown-preview.nvim'

vim.call('plug#end')

vim.cmd [[
syntax enable
colorscheme tender
]]


