set number
" show existing tab with 4 spaces width
set tabstop=4 softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set autoindent
set smartindent
set scrolloff=8
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
set wildignore+=**/node_modules/*
