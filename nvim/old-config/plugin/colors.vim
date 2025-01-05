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
    highlight LineNr guibg=none guifg=#777777
    highlight Comment guibg=none guifg=#A0A0AB
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    highlight Visual guibg=#777777
    highlight StatusLine ctermfg=DarkGrey
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()
